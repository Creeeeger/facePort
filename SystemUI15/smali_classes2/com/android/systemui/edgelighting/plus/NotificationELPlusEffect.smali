.class public final Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;
.super Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

.field public final mEmitterItemInfo:Landroid/os/Bundle;

.field public mIsUsedAppIconForEdgeLightingPlus:Z

.field public final mPackageName:Ljava/lang/String;

.field public mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    iput-object p2, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget-object p1, p3, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mHandler:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$4;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final dismissToastPopup()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->fadeOutAnimator()V

    return-void
.end method

.method public final fadeOutAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$1;-><init>(Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final init()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->init()V

    new-instance v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    new-instance v1, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;)V

    iput-object v1, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setZ(F)V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mNotificationContainer:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final requestHideEffectView()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->fadeOutAnimator()V

    return-void
.end method

.method public final setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    const-string v1, "color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    aput v0, p1, v2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    const-string v3, "isUsedAutoColor"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/high16 v3, -0x1000000

    or-int/2addr v0, v3

    aput v0, p1, v2

    iget-object v2, p0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEffectColors([I)V

    return-void
.end method
