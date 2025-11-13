.class public final Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimationRestoreDrag$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/ViewAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/ViewAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimationRestoreDrag$1;->this$0:Lcom/android/systemui/keyguard/animator/ViewAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimationRestoreDrag$1;->this$0:Lcom/android/systemui/keyguard/animator/ViewAnimationController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->updateAlpha(F)V

    return-void
.end method
