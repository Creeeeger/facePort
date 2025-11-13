.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;


# instance fields
.field public final _gatekeeperInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final gatekeeperInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hasValidGatekeeperInfo:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$special$$inlined$map$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$Companion$Factory$1$1;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;->Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;)V
    .locals 1

    const-string v0, "fingerprintManagerInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel;->hasValidGatekeeperInfo:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintGatekeeperViewModel$special$$inlined$map$1;

    return-void
.end method
