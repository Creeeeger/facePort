.class public Lcom/google/android/setupdesign/GlifLoadingLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;,
        Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationFinishListener;
    }
.end annotation


# static fields
.field static final MIN_ALLOWED_ILLUSTRATION_HEIGHT_RATIO:F = 0.25f


# instance fields
.field animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

.field public animationFinishListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationFinishListener;",
            ">;"
        }
    .end annotation
.end field

.field public animatorListener:Lcom/google/android/setupdesign/GlifLoadingLayout$1;

.field customLottieResource:I

.field illustrationType:Ljava/lang/String;

.field public inflatedView:Landroid/view/View;

.field public runRunnable:Z

.field public workFinished:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLoadingLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLoadingLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    const-string p1, "default"

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->illustrationType:Ljava/lang/String;

    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_DEFAULT:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationFinishListeners:Ljava/util/List;

    const/4 p1, 0x0

    const p2, 0x7f040666

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLoadingLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "default"

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->illustrationType:Ljava/lang/String;

    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_DEFAULT:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationFinishListeners:Ljava/util/List;

    const p1, 0x7f040666

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLoadingLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "default"

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->illustrationType:Ljava/lang/String;

    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_DEFAULT:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationFinishListeners:Ljava/util/List;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLoadingLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x7f0a0f5d

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized finishRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->runRunnable:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->runRunnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final inflateLottieView()V
    .locals 2

    const v0, 0x7f0a0f65

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0a0f70

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->inflatedView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->updateContentPadding(Landroid/widget/LinearLayout;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->setLottieResource()V

    :cond_1
    return-void
.end method

.method public final init(Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/setupdesign/LoadingFooterBarMixin;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    const-class v4, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v4, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupdesign/lottieloadinglayout/R$styleable;->SudGlifLoadingLayout:[I

    invoke-virtual {v3, p1, v4, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->inflateLottieView()V

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/GlifLoadingLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_7

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->illustrationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->illustrationType:Ljava/lang/String;

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "connection"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "update"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "account"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_0

    :sswitch_3
    const-string v3, "final_hold"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_DEFAULT:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_CONNECTION:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_UPDATE:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_ACCOUNT:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    goto :goto_1

    :pswitch_3
    sget-object p1, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->CONFIG_FINAL_HOLD:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->setLottieResource()V

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "custom illustration already applied, should not set illustration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->inflateLottieView()V

    :goto_3
    const p1, 0x7f0a0f64

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationExtraPaddingStyle(Landroid/view/View;)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    :cond_9
    const p1, 0x7f0a0f50

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_HEADER_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v4, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->updateLandscapeMiddleHorizontalSpacing()V

    iput-boolean v2, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->workFinished:Z

    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->runRunnable:Z

    const p1, 0x7f0a0f71

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_b

    new-instance p2, Lcom/google/android/setupdesign/GlifLoadingLayout$1;

    invoke-direct {p2, p0}, Lcom/google/android/setupdesign/GlifLoadingLayout$1;-><init>(Lcom/google/android/setupdesign/GlifLoadingLayout;)V

    iget-object p0, p1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ef69a18 -> :sswitch_3
        -0x462c75d3 -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
        -0x2e3b8122 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isLottieLayoutVisible()Z
    .locals 1

    const v0, 0x7f0a0f65

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "GlifLayoutType"

    const-string v2, "LoadingLayout"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->setLayoutTypeMetrics(Landroid/os/PersistableBundle;)V

    invoke-super {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_4

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_FULL_SCREEN_ILLUSTRATION_ENABLED:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/google/android/setupdesign/GlifLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0d0b67

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isForceTwoPaneEnabled(Landroid/content/Context;)Z

    move-result p2

    const v0, 0x7f0d0b6a

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->getForceTwoPaneStyleLayout(Landroid/content/Context;I)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/setupdesign/GlifLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f0d0b7d

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isForceTwoPaneEnabled(Landroid/content/Context;)Z

    move-result p2

    const v0, 0x7f0d0b82

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->getForceTwoPaneStyleLayout(Landroid/content/Context;I)I

    move-result p2

    :cond_4
    :goto_0
    const v0, 0x7f150494

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->inflatedView:Landroid/view/View;

    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLoadingLayout;->updateContentPadding(Landroid/widget/LinearLayout;)V

    :cond_0
    return-void
.end method

.method public final setLottieResource()V
    .locals 15

    const v0, 0x7f0a0f71

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "GlifLoadingLayout"

    if-nez v1, :cond_0

    const-string p0, "Lottie view not found, skip set resource. Wait for layout inflated."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v3, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->customLottieResource:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, v0, v2}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    invoke-virtual {v6}, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->getLottieConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getIllustrationResourceEntry(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object v3

    const v5, 0x7f0a0f65

    const/4 v6, 0x0

    const/16 v7, 0x8

    const v8, 0x7f0a0f69

    if-eqz v3, :cond_c

    iget-object v2, v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    iget v3, v3, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda1;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda2;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4, v3, v9}, Lcom/airbnb/lottie/LottieCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/Runnable;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget-object v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->instance:Lcom/google/android/setupdesign/util/LottieAnimationHelper;

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;

    invoke-direct {v1}, Lcom/google/android/setupdesign/util/LottieAnimationHelper;-><init>()V

    sput-object v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->instance:Lcom/google/android/setupdesign/util/LottieAnimationHelper;

    :cond_4
    sget-object v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->instance:Lcom/google/android/setupdesign/util/LottieAnimationHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    if-ne v3, v5, :cond_5

    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->getDarkThemeCustomization()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p0

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->getLightThemeCustomization()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    move-result-object v5

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING_ARRAY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    if-ne v5, v7, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->getResourceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getResourceEntryFromKey(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p0

    iget-object v3, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resources:Landroid/content/res/Resources;

    iget p0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    const-string v10, "incorrect format customization, value="

    const-string v11, "LottieAnimationHelper"

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    aget-object v9, v7, v8

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x23

    const-string v13, "**"

    if-ne v9, v12, :cond_6

    :try_start_1
    new-instance v9, Lcom/airbnb/lottie/model/KeyPath;

    aget-object v10, v7, v6

    filled-new-array {v13, v10, v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    aget-object v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v7, "Unknown color, value="

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    aget-object v9, v7, v8

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x40

    if-ne v9, v12, :cond_8

    iget-object v9, v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->colorResourceMapping:Ljava/util/Map;

    aget-object v10, v7, v8

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->colorResourceMapping:Ljava/util/Map;

    aget-object v8, v7, v8

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    aget-object v10, v7, v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "color"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v10, v12, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v10, v1, Lcom/google/android/setupdesign/util/LottieAnimationHelper;->colorResourceMapping:Ljava/util/Map;

    aget-object v8, v7, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v9

    :goto_2
    :try_start_2
    new-instance v9, Lcom/airbnb/lottie/model/KeyPath;

    aget-object v7, v7, v6

    filled-new-array {v13, v7, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    const-string v7, "Resource Not found, resource value="

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/KeyPath;

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v5, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Lcom/airbnb/lottie/SimpleColorFilter;)V

    iget-object v5, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v5, v2, v3, v4}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a string array resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_13

    const v0, 0x7f0a0f6f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->inflatedView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLoadingLayout;->updateContentPadding(Landroid/widget/LinearLayout;)V

    :cond_f
    invoke-virtual {p0, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "Illustration stub not inflated, skip set resource"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    const v0, 0x7f0a0f76

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;

    const v1, 0x7f0a0f75

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/setupdesign/GlifLoadingLayout;->animationConfig:Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLoadingLayout$LottieAnimationConfig;->getIllustrationConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getIllustrationResourceEntry(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v6}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    iget v1, v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iget-object v2, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/google/android/setupcompat/partnerconfig/ResourceEntry;->resourceId:I

    if-ne p0, v1, :cond_11

    if-eqz v2, :cond_13

    iget-object v1, v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    iput p0, v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResId:I

    iput-object v2, v0, Lcom/google/android/setupdesign/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->createMediaPlayer()V

    goto :goto_4

    :cond_12
    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {v0, v7}, Lcom/google/android/setupdesign/view/IllustrationVideoView;->setVisibility(I)V

    :cond_13
    :goto_4
    return-void
.end method

.method public final updateContentPadding(Landroid/widget/LinearLayout;)V
    .locals 8

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_0

    float-to-int v0, v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_PADDING_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_1

    float-to-int v1, v4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_PADDING_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_2

    float-to-int v2, v4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LOADING_LAYOUT_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    cmpl-float v5, v4, v6

    if-ltz v5, :cond_5

    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-static {v4, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr v3, p0

    goto :goto_1

    :cond_4
    :goto_0
    float-to-int v3, v4

    :cond_5
    :goto_1
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
