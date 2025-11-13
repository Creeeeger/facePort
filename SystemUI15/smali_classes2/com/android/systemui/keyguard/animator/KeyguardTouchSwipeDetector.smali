.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

.field public final mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field public mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens$5()V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, "KeyguardTouchSwipeDetector"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const-string p0, "onTouchEvent(): Unlock is started already"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    const-string p0, "onTouchEvent(): mIntercepting is false"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    if-eqz v5, :cond_8

    sget-boolean v6, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v6, :cond_8

    iget-object v5, v5, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v0, :cond_6

    if-ne v0, v3, :cond_7

    :cond_6
    const-string p0, "isSupportSimPermDisabled!!"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    iget v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    float-to-double v5, v5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    const/4 v9, 0x0

    if-eqz v0, :cond_17

    const/4 v10, 0x2

    if-eq v0, v1, :cond_f

    if-eq v0, v10, :cond_d

    const/4 v7, 0x3

    if-eq v0, v7, :cond_b

    if-eq v0, v3, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v10, :cond_a

    move v2, v1

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    invoke-static {p1, p0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent(): ACTION_CANCEL mDistance="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v1, :cond_c

    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    invoke-static {p1, v0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    goto/16 :goto_1

    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    if-nez v0, :cond_e

    return v2

    :cond_e
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityForMove(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;Z)V

    if-eqz v8, :cond_19

    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, p0, v2, v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget v11, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v0, v3, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "onTouchEvent(): ACTION_UP (T/D/R)=%d/%f/%d"

    invoke-static {v4, v3, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    :cond_10
    if-eqz v8, :cond_11

    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isShownSwipeBouncer()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v9, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    :cond_11
    if-eqz v8, :cond_12

    if-eqz v9, :cond_12

    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v9, v0, :cond_15

    :cond_12
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-double v11, v0

    cmpg-double v0, v5, v11

    if-gez v0, :cond_13

    goto :goto_0

    :cond_13
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-double v11, v0

    cmpg-double v0, v11, v5

    if-gez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_14

    const-string v0, "KeyguardTouchBase"

    const-string/jumbo v3, "unlockExecute()"

    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onUnlockExecuted()V

    :cond_14
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    iput v7, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    :cond_15
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v10, :cond_16

    move v2, v1

    :cond_16
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    invoke-static {p1, p0, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_1

    :cond_17
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    iput v7, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    if-eqz v8, :cond_19

    iget-object p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isDynamicLockEnabled()Z

    move-result p1

    iput-boolean p1, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initDynamicLock mIsDynamicLockEnabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "KeyguardTouchDymLockInjector"

    invoke-static {v3, p1, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz p1, :cond_19

    iput v2, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeMode()I

    move-result p0

    iput p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    :cond_18
    iput-object v9, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    iget p0, v8, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "mNonSwipeMode: 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    :goto_1
    return v1
.end method
