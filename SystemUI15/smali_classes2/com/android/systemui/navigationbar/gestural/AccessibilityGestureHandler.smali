.class public final Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;


# instance fields
.field public activePointerId:I

.field public final context:Landroid/content/Context;

.field public final coverContext:Landroid/content/Context;

.field public final displayId:I

.field public downY:F

.field public gestureDetected:Z

.field public final inFlingVelocity:I

.field public final inGestureDistance:I

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Landroid/view/InputMonitor;

.field public isAttached:Z

.field public isCoverNavBarVisible:Z

.field public isPaused:Z

.field public motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

.field public final navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final tag:Ljava/lang/String;

.field public totalY:F

.field public velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const-string p2, "AccessibilityGestureHandler"

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    const-string p3, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p4, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p3

    array-length p4, p3

    if-le p4, p2, :cond_0

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070617

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inGestureDistance:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inFlingVelocity:I

    return-void
.end method


# virtual methods
.method public final clear(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    const-string v4, "clear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    iget-object v4, v3, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->clear()V

    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->cancel()V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateAccessibilityGestureDetected(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final disposeInputChannel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputMonitor;->dispose()V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    return-void
.end method

.method public final updateAccessibilityGestureDetected(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "updateAccessibilityGestureDetected: "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAccessibilityGestureDetected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateIsEnabled()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->supportLargeCoverScreen:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isLargeCoverScreenSyncEnabled()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-wide v4, v3, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    invoke-direct {v7, v3, v1}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V

    iget v3, v7, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    const/4 v7, 0x2

    if-eq v3, v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-eqz v4, :cond_7

    if-nez v0, :cond_5

    if-nez v2, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    if-eqz v7, :cond_5

    :cond_4
    if-nez v3, :cond_6

    :cond_5
    if-nez v3, :cond_7

    :cond_6
    move v5, v6

    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    const-string v7, "a11yButtonState: "

    const-string v8, ", coverScreenNavBarEnabled: "

    const-string v9, " gestureMode: "

    invoke-static {v7, v8, v9, v4, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isWindowShowing: "

    const-string v7, ", isCoverNavBarVisible: "

    invoke-static {v2, v0, v4, v3, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, ", isEnabled: "

    invoke-static {v2, v6, v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const-string v3, "a11yGesture-swipe"

    invoke-virtual {v0, v3, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    new-instance v1, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    :cond_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_a
    return-void
.end method
