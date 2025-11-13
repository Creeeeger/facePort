.class public interface abstract Lcom/android/systemui/shade/ShadeViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/shade/ShadeViewController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/ShadeViewController$Companion;->$$INSTANCE:Lcom/android/systemui/shade/ShadeViewController$Companion;

    sput-object v0, Lcom/android/systemui/shade/ShadeViewController;->Companion:Lcom/android/systemui/shade/ShadeViewController$Companion;

    return-void
.end method


# virtual methods
.method public abstract cancelInputFocusTransfer()V
.end method

.method public abstract closeQsIfPossible()V
.end method

.method public abstract finishInputFocusTransfer(F)V
.end method

.method public abstract getKeyguardBottomAreaViewController()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;
.end method

.method public abstract getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
.end method

.method public abstract getShadeFoldAnimator()Lcom/android/systemui/shade/ShadeFoldAnimator;
.end method

.method public abstract getShadeHeadsUpTracker$1()Lcom/android/systemui/shade/ShadeHeadsUpTracker;
.end method

.method public abstract handleExternalInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract handleExternalTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isInLockStarContainer(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isLaunchTransitionFinished()Z
.end method

.method public abstract isLaunchTransitionRunning()Z
.end method

.method public abstract isTouchableArea(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isViewEnabled()Z
.end method

.method public abstract registerAODDoubleTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setAlpha(IZ)V
.end method

.method public abstract setAlphaChangeAnimationEndAction(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$$ExternalSyntheticLambda0;)V
.end method

.method public abstract setKeyguardStatusBarAlpha(F)V
.end method

.method public setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public abstract setQsScrimEnabled(Z)V
.end method

.method public abstract startExpandLatencyTracking()V
.end method

.method public abstract startInputFocusTransfer()V
.end method

.method public abstract unregisterAODDoubleTouchListener()V
.end method

.method public abstract updateSystemUiStateFlags()V
.end method

.method public abstract updateTouchableRegion()V
.end method
