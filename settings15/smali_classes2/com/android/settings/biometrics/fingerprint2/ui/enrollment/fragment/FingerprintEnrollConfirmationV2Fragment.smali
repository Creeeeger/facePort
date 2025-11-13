.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;",
        "Landroidx/fragment/app/Fragment;",
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
.field public final viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    const v0, 0x7f0d0231

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$viewModel$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$viewModel$2;-><init>(Landroidx/lifecycle/ViewModelProvider$Factory;)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollConfirmationViewModel;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v4, v1, v2, v0, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Lcom/google/android/setupdesign/GlifLayout;

    const p3, 0x7f1429fe

    invoke-virtual {p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const p3, 0x7f142a00

    invoke-virtual {p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    const-class p3, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;Lcom/google/android/setupcompat/template/FooterBarMixin;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1429f1

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment$onCreateView$1$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/FingerprintEnrollConfirmationV2Fragment;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x5

    const v2, 0x7f15045d

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-object p1
.end method
