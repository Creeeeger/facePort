.class public Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$InternalActivity;,
        Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$SetupActivity;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "<init>",
        "()V",
        "InternalActivity",
        "SetupActivity",
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
.field public final autoCredentialViewModel$delegate:Lkotlin/Lazy;

.field public final chooseLockLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

.field public final chooseLockResultCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;

.field public final enrollingActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

.field public final enrollingViewModel$delegate:Lkotlin/Lazy;

.field public final errorDialogViewModel$delegate:Lkotlin/Lazy;

.field public final findSensorActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

.field public final findSensorViewModel$delegate:Lkotlin/Lazy;

.field public final finishActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

.field public final finishViewModel$delegate:Lkotlin/Lazy;

.field public final introViewModel$delegate:Lkotlin/Lazy;

.field public isFirstFragmentAdded:Z

.field public final progressViewModel$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;

.field public final viewModelProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$viewModelProvider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$viewModelProvider$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->viewModelProvider$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$viewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$viewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->viewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$autoCredentialViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$autoCredentialViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->autoCredentialViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$introViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$introViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->introViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$findSensorViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$findSensorViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->findSensorViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$progressViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$progressViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->progressViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$enrollingViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$enrollingViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$errorDialogViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$errorDialogViewModel$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->errorDialogViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->findSensorActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$chooseLockResultCallback$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->chooseLockLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public final attachFindSensorViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipFindSensor:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->findSensorViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->findSensorActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final attachIntroViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v1, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipIntro:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipFindSensor:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->autoCredentialViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    return-object p0
.end method

.method public final getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 6

    new-instance v0, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;)V

    sget-object v1, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CHALLENGE_GENERATOR_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    new-instance v2, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;

    sget-object v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->biometricsRepositoryProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;-><init>(Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;)V

    iget-object v3, v0, Landroidx/lifecycle/viewmodel/CreationExtras;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->ENROLLMENT_REQUEST_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    new-instance v2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "getIntent(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getApplicationContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$SetupActivity;

    invoke-direct {v2, v4, v3, v5}, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    iget-object v3, v0, Landroidx/lifecycle/viewmodel/CreationExtras;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CREDENTIAL_MODEL_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    new-instance v2, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v3

    const-string v4, "elapsedRealtimeClock(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/android/settings/biometrics2/ui/model/CredentialModel;-><init>(Landroid/os/Bundle;Ljava/time/Clock;)V

    iget-object p0, v0, Landroidx/lifecycle/viewmodel/CreationExtras;->map:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    new-instance p0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    return-object p0
.end method

.method public final getViewModelProvider()Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->viewModelProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelProvider;

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/activity/result/ActivityResult;

    invoke-direct {p1, p2, p3}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onChooseOrConfirmLockResult(ZLandroidx/activity/result/ActivityResult;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f15037d

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1010054

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method public final onChooseOrConfirmLockResult(ZLandroidx/activity/result/ActivityResult;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isChooseLock:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fail to unset waiting flag"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintEnrollmentActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "result"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget v3, p2, Landroidx/activity/result/ActivityResult;->mResultCode:I

    if-eq v3, v1, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget p1, p2, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    :cond_2
    iget-object p1, p2, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string p0, "gk_pw_handle"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, p0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->generateChallenge(JZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModelProvider()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget v1, v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->theme:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const v3, 0x7f0a06ab

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCreate() has savedInstance:$(savedInstanceState != null), fragment:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintEnrollmentActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    iput-boolean v5, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->isFirstFragmentAdded:Z

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-string v7, "intro"

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isValidCredential()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->CREDENTIAL_VALID:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    goto :goto_1

    :cond_1
    iget-object v9, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v11, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-virtual {v9, v11}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v9

    if-nez v9, :cond_2

    sget-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->FAIL_NEED_TO_CHOOSE_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    goto :goto_1

    :cond_2
    iget-wide v11, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->gkPwHandle:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_3

    iget-object v9, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->clock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->clearGkPwHandleMillis:Ljava/lang/Long;

    iput-wide v13, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->gkPwHandle:J

    invoke-virtual {v1, v11, v12, v2, v8}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->generateChallenge(JZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    iput-boolean v3, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isGeneratingChallengeDuringCheckingCredential:Z

    sget-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->IS_GENERATING_CHALLENGE:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;->FAIL_NEED_TO_CONFIRM_LOCK:Lcom/android/settings/biometrics2/ui/viewmodel/CredentialAction;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v8, 0x2

    const/16 v9, -0x2710

    if-eq v1, v8, :cond_7

    if-eq v1, v5, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    const v8, 0x7f142a19

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "getString(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v10, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iput v3, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iput-object v8, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v3, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v3, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v1, v1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    if-eq v1, v9, :cond_5

    iput v1, v10, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_5
    invoke-virtual {v10}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "confirmLock, launched is true"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "confirmLock, fail to set isWaiting flag to true"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v8

    iget-object v8, v8, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v8, v8, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroid/os/Bundle;

    iget-object v10, v10, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->_suwExtras:Landroid/os/Bundle;

    invoke-direct {v11, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_9

    new-instance v8, Landroid/content/Intent;

    const-class v10, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "lockscreen.password_type"

    const/high16 v12, 0x20000

    invoke-virtual {v8, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "show_options_button"

    invoke-virtual {v8, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    invoke-virtual {v8, v11}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    new-instance v8, Landroid/content/Intent;

    const-class v10, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v8, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    const-string v10, "hide_insecure_options"

    invoke-virtual {v8, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "request_gk_pw_handle"

    invoke-virtual {v8, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "for_fingerprint"

    invoke-virtual {v8, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v1, v1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    if-eq v1, v9, :cond_a

    const-string v9, "android.intent.extra.USER_ID"

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isWaitingActivityResult:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "chooseLock, fail to set isWaiting flag to true"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->chooseLockLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {v1, v8}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v1, v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipFindSensor:Z

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startEnrollingFragment()V

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v1, v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipIntro:Z

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startFindSensorFragment()V

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachIntroViewModel()V

    const-class v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-virtual {v0, v1, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startFragment(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachIntroViewModel()V

    goto :goto_4

    :cond_10
    const-string v2, "find-sensor"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachFindSensorViewModel()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachIntroViewModel()V

    goto :goto_4

    :cond_11
    const-string v2, "enrolling"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    iget-object v2, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachFindSensorViewModel()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachIntroViewModel()V

    goto :goto_4

    :cond_12
    const-string v2, "finish"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    iget-object v2, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachFindSensorViewModel()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachIntroViewModel()V

    :goto_4
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1;

    invoke-direct {v2, v0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$collectFlows$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v6, v6, v2, v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fragment tag "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v1, v1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    iget-object v2, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v2, v1}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getNumOfEnrolledFingerprintsSize(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v5, "com.android.settings.SetupFingerprintSuggestionActivity"

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.android.settings.SetupFingerprintSuggestionActivity enabled state: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "FingerprintEnrollmentViewModel"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v2

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->checkFinishActivityDuringOnPause(ZZLandroidx/lifecycle/LifecycleCoroutineScopeImpl;)V

    return-void
.end method

.method public final onSetActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->isGeneratingChallengeDuringCheckingCredential:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->challenge:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B

    const-string v3, "hw_auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-wide v2, v0, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->challenge:J

    const-string v0, "challenge"

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "result"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isNewFingerprintAdded:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isAfterSuwOrSuwSuggestedAction:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    :goto_1
    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-ne v0, v3, :cond_4

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    new-instance v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final startEnrollingFragment()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->progressViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B

    iput-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->enrollingActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeUdfps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeSfps()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    :goto_0
    const-string v1, "enrolling"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startFragment(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final startFindSensorFragment()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->progressViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->token:[B

    iput-object v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mToken:[B

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->attachFindSensorViewModel()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeUdfps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindUdfpsFragment;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->canAssumeSfps()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindRfpsFragment;

    :goto_0
    const-string v1, "find-sensor"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startFragment(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final startFragment(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->isFirstFragmentAdded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0a06ab

    const/4 v4, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iput-boolean v4, v0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    invoke-virtual {v0, v3, p1, v2, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->isFirstFragmentAdded:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p0

    iput-boolean v4, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    const v0, 0x7f0100d2

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    const v0, 0x7f0100d3

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    const v0, 0x7f0100cf

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    const v0, 0x7f0100d0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    invoke-virtual {p0, v3, p1, v2, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :goto_0
    return-void
.end method
