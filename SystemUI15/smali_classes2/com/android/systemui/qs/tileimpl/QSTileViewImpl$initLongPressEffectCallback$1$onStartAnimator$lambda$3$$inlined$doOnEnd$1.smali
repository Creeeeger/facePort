.class public final Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1$onStartAnimator$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz p0, :cond_9

    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->RUNNING_FORWARD:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    if-ne p1, v0, :cond_8

    sget-object p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->IDLE:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->snapEffect:Landroid/os/VibrationEffect;

    iget-object v0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget-object v0, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    float-to-int v0, v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v3, :cond_3

    iget v4, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    int-to-float v2, v2

    sub-float/2addr v4, v2

    float-to-int v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v3, :cond_4

    iget v1, v3, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v1, v1

    :cond_4
    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paddingForLaunch:Landroid/graphics/Rect;

    neg-int v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->qsTile:Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->expandable:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Lcom/android/systemui/animation/Expandable;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->resetLongPressEffectProperties()V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->qsTile:Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->expandable:Lcom/android/systemui/animation/Expandable;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick(Lcom/android/systemui/animation/Expandable;)V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->TIMEOUT_WAIT:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    if-eq p1, v0, :cond_9

    sget-object p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->IDLE:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    :cond_9
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
