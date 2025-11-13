.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;",
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
.field public _viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

.field public final addButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

.field public final nextButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->addButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->nextButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p1}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p1

    const-string v2, "store"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {p1, v2, v0, v1, p1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p1

    const-class v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "modelClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

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
    .locals 9

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {p3}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeSfps()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0d0b31

    goto :goto_0

    :cond_0
    const p3, 0x7f0d0230

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "requireActivity(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mRequest:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean p3, p3, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v1}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeSfps()Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mUserId:I

    iget-object v2, v2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v2, v3}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getNumOfEnrolledFingerprintsSize(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->nextButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;->addButtonClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment$addButtonClickListener$1;

    const-string v5, "nextButtonClickListener"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "addButtonClickListener"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f1429fe

    invoke-virtual {p2, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "getText(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v6, v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_3
    invoke-virtual {p1, v7}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const v1, 0x7f1429ff

    goto :goto_3

    :cond_5
    const v1, 0x7f142a00

    :goto_3
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1, v1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_6
    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p3, :cond_7

    const p3, 0x7f14197c

    goto :goto_4

    :cond_7
    const p3, 0x7f1429f1

    :goto_4
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Lcom/google/android/setupcompat/template/FooterButton;

    const v5, 0x7f15045d

    const/4 v6, 0x5

    invoke-direct {v4, p3, v3, v6, v5}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    if-eqz v2, :cond_8

    const p3, 0x7f140f9b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton;

    const v2, 0x7f15045e

    const/4 v3, 0x7

    invoke-direct {p3, p2, p0, v3, v2}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v1, p3, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    :cond_8
    return-object p1
.end method
