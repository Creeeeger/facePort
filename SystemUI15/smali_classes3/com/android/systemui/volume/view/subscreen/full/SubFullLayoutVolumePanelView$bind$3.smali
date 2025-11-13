.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 11

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$showBlurRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$showBlurRunnable$1;

    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-boolean v4, v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0a0e5f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const v4, 0x7f0a0e5c

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    :goto_0
    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    new-instance v5, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3$1$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;Landroid/widget/ImageView;)V

    move-object v2, v5

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-boolean v5, v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isDualViewEnabled:Z

    const-string v6, "alpha"

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    iget-object p0, v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p0, :cond_2

    move-object p0, v9

    :cond_2
    iget-object v3, v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v3

    :goto_1
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    new-array v9, v0, [F

    aput v5, v9, p1

    aput v7, v9, v1

    invoke-static {v3, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0xc8

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string/jumbo v6, "scaleX"

    invoke-static {v3, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v6, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewShowAnimation$scaleAnimator$1$1;

    invoke-direct {v6, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewShowAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v9, 0x190

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {v3, v6, v9, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    aput-object v5, v6, p1

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, p1

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewShowAnimation$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion$startVolumeDualViewShowAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;)V

    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    :cond_4
    iget-object v3, v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v9

    :goto_2
    invoke-static {v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object v3, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v3, :cond_6

    move-object v3, v9

    :cond_6
    iget-object v2, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v2, :cond_7

    move-object v2, v9

    :cond_7
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    new-array v0, v0, [F

    aput v3, v0, p1

    aput v7, v0, v1

    invoke-static {v2, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iput-boolean v1, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->isFirstTouch:Z

    iget-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

    if-nez v0, :cond_8

    move-object v0, v9

    :cond_8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/os/PowerManager;

    const-string v2, "AOD_VolumePanel"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput-object p1, v0, Lcom/android/systemui/volume/util/PowerManagerWrapper;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    move-object v9, p0

    :goto_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/PluginAODManagerWrapper;->requestAODVolumePanel(Z)V

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView$bind$3;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_b

    move-object p1, v9

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    move-object v9, p0

    :goto_4
    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v1, 0x43160000    # 150.0f

    const v3, 0x3f333333    # 0.7f

    invoke-static {v1, v3}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    iput-object v1, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleY(F)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_5
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    iput v8, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v0, v8}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_e
    iput-object v0, p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_f
    :goto_6
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method
