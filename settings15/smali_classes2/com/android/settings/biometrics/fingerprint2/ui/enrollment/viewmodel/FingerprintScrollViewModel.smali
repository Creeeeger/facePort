.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;


# instance fields
.field public final _hasReadConsentScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final hasReadConsentScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel$Companion$Factory$1$1;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel$Companion$Factory$1$1;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;->Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;->_hasReadConsentScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintScrollViewModel;->hasReadConsentScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
