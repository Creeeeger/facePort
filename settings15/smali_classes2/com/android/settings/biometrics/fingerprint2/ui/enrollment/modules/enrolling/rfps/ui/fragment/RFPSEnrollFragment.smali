.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final backgroundViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

.field public final factory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public final iconTouchViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

.field public progressBar:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/widget/RFPSProgressBar;

.field public final rfpsViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

.field public textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintNavigationStep$Enrollment;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const v0, 0x7f0d0237

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$iconTouchViewModel$2;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$iconTouchViewModel$2;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$1;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/viewmodel/RFPSIconTouchViewModel;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v4, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v5, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$4;

    invoke-direct {v5, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/Lazy;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    :cond_0
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v1, v3, v4, v0, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->iconTouchViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$rfpsViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$rfpsViewModel$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;)V

    const-class v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/viewmodel/RFPSViewModel;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v4, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v5, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {v5, v1, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->rfpsViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    const-class v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/BackgroundViewModel;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$5;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$6;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$special$$inlined$activityViewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance p0, Landroidx/lifecycle/ViewModelLazy;

    invoke-direct {p0, v0, v1, v3, v2}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 1

    const-string v0, "theFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->factory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method


# virtual methods
.method public final getRfpsViewModel()Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/viewmodel/RFPSViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->rfpsViewModel$delegate:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/viewmodel/RFPSViewModel;

    return-object p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "requireContext(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0a0e24

    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/google/android/setupdesign/GlifLayout;

    const v0, 0x7f142a10

    invoke-virtual {p3, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    const v0, 0x7f142a0e

    invoke-virtual {p3, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    const-string v1, "loadInterpolator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0fe1

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0a0647

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.settings.biometrics.fingerprint2.ui.enrollment.modules.enrolling.rfps.ui.widget.RFPSProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/widget/RFPSProgressBar;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->progressBar:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/widget/RFPSProgressBar;

    const-class p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p3, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    const p3, 0x7f1429f2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;)V

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x7

    const v2, 0x7f15045e

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object p1, p1, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->progressBar:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/widget/RFPSProgressBar;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p0, "progressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$2;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string p3, "getViewLifecycleOwner(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$3;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment$onCreateView$3;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p1, p2, p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/fragment/RFPSEnrollFragment;->getRfpsViewModel()Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/rfps/ui/viewmodel/RFPSViewModel;

    throw p2
.end method
