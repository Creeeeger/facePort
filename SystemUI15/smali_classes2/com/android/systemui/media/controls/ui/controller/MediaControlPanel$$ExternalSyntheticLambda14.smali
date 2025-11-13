.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$4:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/ImageButton;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$3:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$4:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$1:Landroid/widget/ImageButton;

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$2:Ljava/lang/Runnable;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$3:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;->f$4:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    move-result v5

    iget v7, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v8, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v10, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    invoke-virtual {v10, v5, v7, v9, v8}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logTapAction(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x2f8

    invoke-virtual {v1, v7, v5, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->logSmartspaceCardReported(III)V

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->isPlaying()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mWasPlaying:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mButtonClicked:Z

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    iget-object v5, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v5, v5, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v5, v6

    int-to-float v13, v5

    new-instance v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    new-instance v15, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    sget-object v7, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float v10, v8, v6

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    add-float v11, v2, v6

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v14, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    iget v1, v1, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->currentColor:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v8, 0x5dc

    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v6, v15

    move v12, v13

    move-object v2, v15

    move v15, v1

    invoke-direct/range {v6 .. v21}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;JFFFFFIIFLcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;Z)V

    invoke-direct {v5, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;)V

    iget-object v1, v3, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->multipleRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0xa

    if-lt v2, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;

    invoke-direct {v2, v3, v5}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController$play$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V

    iget-object v3, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    iget-object v6, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    iget-wide v6, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->duration:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$1;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;

    invoke-direct {v6, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation$play$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_1
    instance-of v1, v4, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_2

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_3
    return-void
.end method
