.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public _viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

.field public introView:Lcom/google/android/setupdesign/GlifLayout;

.field public final onNextClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

.field public final onSkipOrCancelClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

.field public primaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field public secondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->onNextClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->onSkipOrCancelClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    return-void
.end method

.method public static final access$updateFooterButtons(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->primaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    sget-object v3, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;->FINGERPRINT_ENROLLABLE_ERROR_REACH_MAX:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    iget-boolean v4, p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->mHasScrollToBottom:Z

    if-ne v2, v3, :cond_0

    const v2, 0x7f140d53

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    const v2, 0x7f142a01

    goto :goto_0

    :cond_1
    const v2, 0x7f1429c8

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->secondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    if-eqz v4, :cond_2

    if-eq p1, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a05dc

    invoke-virtual {p0, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const p1, 0x7f140f9e

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v2

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    const-string v3, "store"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "factory"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v0, v3, v1, v2, v0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object v0

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "modelClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0232

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->introView:Lcom/google/android/setupdesign/GlifLayout;

    return-object p1
.end method

.method public final onStart()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->introView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    const-string v2, "getMixin(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->updateEnrollableStatus(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    iget-object v2, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    const v3, 0x7f15045d

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f142a01

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v6, 0x6

    invoke-direct {v5, v2, v4, v6, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->onNextClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    iput-object v2, v5, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iput-object v5, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->primaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    :goto_0
    iget-object v2, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v2, v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isAfterSuwOrSuwSuggestedAction:Z

    if-eqz v2, :cond_2

    const v2, 0x7f142a02

    goto :goto_1

    :cond_2
    const v2, 0x7f142a08

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v5, 0x5

    invoke-direct {v2, v0, v4, v5, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->onSkipOrCancelClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    iput-object v0, v2, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iput-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->secondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    :goto_2
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v0, v4, v4, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "requireActivity(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->introView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v4}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeUdfps()Z

    move-result v4

    iget-object v5, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v7, v5, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x20

    iget v5, v5, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->userId:I

    invoke-static {v6, v7, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v9

    iget-object v8, v8, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x2

    invoke-static {v9, v8}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a07a0

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0a079d

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0a07b8

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f0a07a6

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0a07b1

    invoke-virtual {v3, v14}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Landroid/widget/ImageView;

    const v15, 0x7f0a07aa

    invoke-virtual {v3, v15}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v15, Landroid/widget/ImageView;

    const v7, 0x7f0a069f

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Landroid/widget/TextView;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v9}, Lcom/google/android/setupdesign/util/DynamicColorPalette;->getColor(Landroid/content/Context;)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f0a069a

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v10, 0x7f142a2c

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "getString(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance v0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;

    invoke-direct {v0, v1, v3}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/setupdesign/GlifLayout;)V

    if-eqz v5, :cond_4

    if-nez v8, :cond_4

    const v1, 0x7f142a0a

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v4, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$getDescriptionDisabledByAdmin$1;

    invoke-direct {v4, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$getDescriptionDisabledByAdmin$1;-><init>(Landroid/content/Context;)V

    const-string v1, "Settings.FINGERPRINT_UNLOCK_DISABLED"

    invoke-virtual {v2, v1, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const v2, 0x7f142a09

    invoke-virtual {v0, v2}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    invoke-static {v9}, Lcom/google/android/setupdesign/util/DeviceHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f142a0b

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setDescriptionText(Ljava/lang/CharSequence;)V

    :goto_3
    const v0, 0x7f0a0f78

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setImportantForAccessibility(I)V

    :goto_4
    return-void
.end method
