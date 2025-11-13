.class public final Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$showScreenOnAffordanceAnimation$4$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$showScreenOnAffordanceAnimation$4$1;->this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController$showScreenOnAffordanceAnimation$4$1;->this$0:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onScreenOnOffAnimationEnd()V

    :cond_1
    return-void
.end method
