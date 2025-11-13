.class public final Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$1;

    iget-object v6, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {v5, v6}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$1;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    goto :goto_0

    :cond_0
    sget-boolean v5, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;

    iget-object v6, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    invoke-direct {v5, v6}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$2;-><init>(Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;)V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$3;->INSTANCE:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2$showBlurRunnable$3;

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$bind$2;->this$0:Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;

    iget-object v6, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    new-array v10, v3, [F

    aput v8, v10, v2

    aput v9, v10, v1

    const-string v8, "alpha"

    invoke-static {v0, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v11, 0xc8

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v13, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$alphaAnimator$1$1;

    invoke-direct {v13, v0, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v13

    new-array v14, v3, [F

    aput v13, v14, v2

    aput v9, v14, v1

    const-string/jumbo v13, "scaleX"

    invoke-static {v0, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$scaleAnimator$1$1;

    invoke-direct {v14, v0}, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v14, 0x190

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v11, 0x3e800000    # 0.25f

    const/4 v12, 0x0

    invoke-static {v7, v11, v12, v9, v13}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    const v7, 0x7f0a0e84

    invoke-virtual {v0, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0a0e8a

    invoke-virtual {v0, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v11, v1, [Landroid/animation/Animator;

    aput-object v10, v11, v2

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v10, v1, [Landroid/animation/Animator;

    aput-object v13, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v10, v1, [Landroid/animation/Animator;

    invoke-static {v7, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v7

    aput-object v7, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v7, v1, [Landroid/animation/Animator;

    iget-object v10, v6, Lcom/android/systemui/volume/view/VolumePanelMotion;->context:Landroid/content/Context;

    if-nez v10, :cond_4

    const/4 v10, 0x0

    :cond_4
    const v11, 0x7f0717cc

    invoke-static {v11, v10}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result v10

    new-array v11, v3, [F

    aput v10, v11, v2

    aput v12, v11, v1

    const-string/jumbo v10, "translationY"

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v11, Lcom/android/systemui/volume/view/VolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v11, 0xc8

    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v1, [Landroid/animation/Animator;

    aput-object v10, v8, v2

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x32

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    aput-object v3, v7, v2

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$1$1;

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion$startShowVolumeExpandAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    if-nez v4, :cond_5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
