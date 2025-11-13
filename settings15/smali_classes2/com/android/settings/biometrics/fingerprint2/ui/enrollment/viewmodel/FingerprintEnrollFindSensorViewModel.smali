.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;


# instance fields
.field public final _education:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final sfpsLottieInfo:Lkotlinx/coroutines/flow/SafeFlow;

.field public final showErrorDialog:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final showPrimaryButton:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel$special$$inlined$filter$1;

.field public final showRfpsAnimation:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel$special$$inlined$filter$1;

.field public final udfpsLottieInfo:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintNavigationStep$Education;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    new-instance v1, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel$Companion$Factory$1$1;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel$Companion$Factory$1$1;

    const-class v3, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-virtual {v0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;->Factory:Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    return-void
.end method
