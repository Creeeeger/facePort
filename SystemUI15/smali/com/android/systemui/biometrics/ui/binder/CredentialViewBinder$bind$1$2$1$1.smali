.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $customizedViewContainer:Landroid/widget/LinearLayout;

.field public final synthetic $descriptionView:Landroid/widget/TextView;

.field public final synthetic $emergencyButtonView:Landroid/widget/Button;

.field public final synthetic $iconView:Landroid/widget/ImageView;

.field public final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field public final synthetic $subtitleView:Landroid/widget/TextView;

.field public final synthetic $titleView:Landroid/widget/TextView;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$titleView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$subtitleView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$descriptionView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$iconView:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$emergencyButtonView:Landroid/widget/Button;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$titleView:Landroid/widget/TextView;

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->subtitle:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt;->access$setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->description:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt;->access$setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->customBiometricPrompt()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->constraintBp()V

    sget-object p2, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->contentView:Landroid/hardware/biometrics/PromptContentView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    invoke-direct {p2, v1, v3, v2}, Lcom/android/systemui/biometrics/ui/binder/BiometricCustomizedViewBinder$bind$1;-><init>(Landroid/hardware/biometrics/PromptContentView;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$iconView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-boolean p1, p1, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->showEmergencyCallButton:Z

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$emergencyButtonView:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$emergencyButtonView:Landroid/widget/Button;

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p2, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->animateContents:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;->$view:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ce

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt$animateCredentialViewIn$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinderKt$animateCredentialViewIn$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
