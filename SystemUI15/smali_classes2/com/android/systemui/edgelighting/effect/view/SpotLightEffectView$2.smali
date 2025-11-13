.class public final Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    add-int/lit16 v1, v1, -0xa8b

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    sget p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->$r8$clinit:I

    const p1, 0x3f2147ae    # 0.63f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    sget p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
