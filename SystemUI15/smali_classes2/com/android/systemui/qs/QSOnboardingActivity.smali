.class public final Lcom/android/systemui/qs/QSOnboardingActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final ON_SECOND_PAGE:Ljava/lang/String;

.field public firstPage:Landroid/widget/LinearLayout;

.field public firstPageAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public fullScreenScrollView:Landroid/widget/ScrollView;

.field public isSplit:Z

.field public final onBackInvokedCallback:Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;

.field public secondPage:Landroid/widget/LinearLayout;

.field public secondPageDescription:Landroid/widget/TextView;

.field public separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public separateStroke:Landroid/widget/FrameLayout;

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public strokeAnimator:Landroid/animation/ValueAnimator;

.field public togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public togetherStroke:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/QSOnboardingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSOnboardingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    sget-object v0, Lcom/android/systemui/qs/QSOnboardingActivity$settingsHelper$2;->INSTANCE:Lcom/android/systemui/qs/QSOnboardingActivity$settingsHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->settingsHelper$delegate:Lkotlin/Lazy;

    const-string v0, "on_second_page"

    iput-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->ON_SECOND_PAGE:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    new-instance v0, Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->onBackInvokedCallback:Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;

    return-void
.end method

.method public static final access$updatePanelSplit(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    if-ne v0, p1, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setPanelSplit(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->strokeAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSOnboardingActivity;->playLottieAnimation()V

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPageDescription:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    if-eqz p0, :cond_3

    const p0, 0x7f130e50

    goto :goto_1

    :cond_3
    const p0, 0x7f130e58

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/QSOnboardingActivity;->transitionToPage(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPageAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mContext:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplit()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    const v2, 0x7f130e7d

    invoke-virtual {p0, v2}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    const v3, 0x7f0a0bfd

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-boolean v4, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mIsNeedScrollView:Z

    const v5, 0x7f0a0cb6

    if-nez v4, :cond_0

    const v3, 0x7f0a0bfc

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const v6, 0x7f0a0cb3

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v6, v8, v2, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0301

    invoke-virtual {v4, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080b1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f130ce9

    goto :goto_0

    :cond_2
    const v3, 0x7f130e7b

    :goto_0
    new-instance v4, Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    iget-object v6, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v6, :cond_3

    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v6, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, v6, Lcom/google/android/setupcompat/template/FooterButton$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google/android/setupcompat/template/FooterButton;

    iget v6, v6, Lcom/google/android/setupcompat/template/FooterButton$Builder;->direction:I

    invoke-direct {v3, v1, v4, v6}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSOnboardingActivity$onCreate$1;I)V

    iput-object v3, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    goto :goto_1

    :cond_3
    iput v2, v6, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iget-object v6, v6, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz v6, :cond_4

    iget-object v7, v6, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v8, v7, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget v6, v6, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v7}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object v3, v6, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    if-eqz v3, :cond_5

    iget-object v6, v3, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->this$0:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v6, v6, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    iget v3, v3, Lcom/google/android/setupcompat/template/FooterBarMixin$1;->val$id:I

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v4, v1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    :goto_1
    iget-object v1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v3, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const v1, 0x7f0a044a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0ace

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    move-object v1, v3

    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez v1, :cond_7

    move-object v1, v3

    :cond_7
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0a0afb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateStroke:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0d4c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherStroke:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v0, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->strokeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->strokeAnimator:Landroid/animation/ValueAnimator;

    if-nez v7, :cond_8

    move-object v7, v3

    :cond_8
    new-instance v8, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$initStrokeAnimator$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateStroke:Landroid/widget/FrameLayout;

    if-nez v7, :cond_9

    move-object v7, v3

    :cond_9
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherStroke:Landroid/widget/FrameLayout;

    if-nez v6, :cond_a

    move-object v6, v3

    :cond_a
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    :cond_b
    iget-object v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateStroke:Landroid/widget/FrameLayout;

    if-nez v7, :cond_c

    move-object v7, v3

    :cond_c
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherStroke:Landroid/widget/FrameLayout;

    if-nez v1, :cond_d

    move-object v1, v3

    :cond_d
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_2
    const v1, 0x7f0a0af7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a0d49

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a044b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPageAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const v1, 0x7f0a0acf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPageDescription:Landroid/widget/TextView;

    const v1, 0x7f0a0af9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f0a0d4b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPageDescription:Landroid/widget/TextView;

    if-nez v1, :cond_e

    move-object v1, v3

    :cond_e
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    if-eqz v7, :cond_f

    const v7, 0x7f130e50

    goto :goto_3

    :cond_f
    const v7, 0x7f130e58

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f130e7e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "%1$s"

    invoke-static {v1, v7}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%2$s"

    invoke-static {v7, v8}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/QSOnboardingActivity$formatClickableText$clickableSpan$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$formatClickableText$clickableSpan$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    new-instance v9, Landroid/text/SpannableString;

    sget v10, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const-string v10, ""

    filled-new-array {v10, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x6

    invoke-static {v9, v7, v2, v2, v0}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v10, 0x21

    invoke-virtual {v9, v7, v0, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v9, v8, v0, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f0a07d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a0ccb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->fullScreenScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/qs/QSOnboardingActivity$initScrollView$1$2;-><init>(Landroid/widget/ScrollView;Lcom/android/systemui/qs/QSOnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0a0af8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$2;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$2;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a0d4a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$1;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$2;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/QSOnboardingActivity$initClickListeners$1$2;-><init>(Lcom/android/systemui/qs/QSOnboardingActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    goto :goto_4

    :cond_10
    move v1, v2

    :goto_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v1, v2, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_11

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_5

    :cond_11
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_12

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->ON_SECOND_PAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_6

    :cond_13
    move p1, v2

    :goto_6
    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->firstPage:Landroid/widget/LinearLayout;

    if-nez p1, :cond_14

    move-object p1, v3

    :cond_14
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez p0, :cond_15

    goto :goto_7

    :cond_15
    move-object v3, p0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_16
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->secondPage:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->ON_SECOND_PAGE:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->onBackInvokedCallback:Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->onBackInvokedCallback:Lcom/android/systemui/qs/QSOnboardingActivity$onBackInvokedCallback$1;

    invoke-interface {v0, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final playLottieAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->isSplit:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    move-object v0, v3

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_2

    move-object v0, v3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_5

    move-object v0, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->togetherAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_6

    move-object v0, v3

    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_7

    move-object v0, v3

    :cond_7
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->separateAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move-object v3, p0

    :goto_1
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_2
    return-void
.end method

.method public final transitionToPage(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSOnboardingActivity;->fullScreenScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/systemui/qs/QSOnboardingActivity$transitionToPage$1;-><init>(Landroid/view/View;Lcom/android/systemui/qs/QSOnboardingActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
