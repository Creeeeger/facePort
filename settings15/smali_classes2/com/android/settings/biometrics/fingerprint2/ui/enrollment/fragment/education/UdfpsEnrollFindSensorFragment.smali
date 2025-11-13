.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "theFactory",
        "(Landroidx/lifecycle/ViewModelProvider$Factory;)V",
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
.field public final factory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public final viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$viewModel$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v4, v1, v2, v0, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "theFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public static final access$getViewModel(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;)Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;->viewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;

    return-object p0
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0bf1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const p2, 0x7f142a5c

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const p2, 0x7f142a5a

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v1, 0x7f1429f2

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$3$1$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$3$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;I)V

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton;

    const v3, 0x7f15045e

    const/4 v4, 0x7

    invoke-direct {v2, p3, v1, v4, v3}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, v2, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$2;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;Lcom/google/android/setupcompat/template/FooterBarMixin;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$3;

    invoke-direct {p3, p0, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$3;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;Lcom/google/android/setupdesign/GlifLayout;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, v1, p3, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$4;

    invoke-direct {p3, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment$onCreateView$4;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/UdfpsEnrollFindSensorFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v1, v1, p3, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-object p1
.end method
