.class public final Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/PanelTransitionAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$2;->this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationAtEnd()V
    .locals 0

    return-void
.end method

.method public final onAnimationAtStart()V
    .locals 0

    return-void
.end method

.method public final onAnimationStarted()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator$updateAnimators$9$2;->this$0:Lcom/android/systemui/qs/animator/PanelTransitionAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->clockDateContainer:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/qs/animator/PanelTransitionAnimator;->updateVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
