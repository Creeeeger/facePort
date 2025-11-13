.class public final Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# static fields
.field public static final CHALLENGE_GENERATOR_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

.field public static final CREDENTIAL_MODEL_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

.field public static final ENROLLMENT_REQUEST_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CHALLENGE_GENERATOR_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    new-instance v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->ENROLLMENT_REQUEST_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    new-instance v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CREDENTIAL_MODEL_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 5

    sget-object p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion$APPLICATION_KEY$1;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    const-string v0, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    if-eqz p0, :cond_b

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->biometricsRepositoryProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;

    const-class v3, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CREDENTIAL_MODEL_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    sget-object v1, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->CHALLENGE_GENERATOR_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    invoke-virtual {p2, v1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;

    invoke-virtual {p2, v4}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;-><init>(Landroid/app/Application;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel$FingerprintChallengeGenerator;Lcom/android/settings/biometrics2/ui/model/CredentialModel;)V

    return-object v0

    :cond_0
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    new-instance p2, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-direct {p2, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;-><init>(Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_1
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;-><init>(Landroid/app/Application;)V

    return-object p1

    :cond_2
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    sget-object v3, Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory;->ENROLLMENT_REQUEST_KEY:Lcom/android/settings/biometrics2/factory/BiometricsViewModelFactory$1;

    if-eqz v1, :cond_3

    invoke-virtual {p2, v3}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    iget-boolean p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    invoke-direct {p2, p0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;-><init>(Landroid/app/Application;Z)V

    return-object p2

    :cond_3
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    invoke-virtual {p2, v4}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    iget p2, p2, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;-><init>(ILandroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V

    return-object v0

    :cond_4
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    move-result-object p1

    invoke-virtual {p2, v3}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;-><init>(Landroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V

    return-object v0

    :cond_5
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v4}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;-><init>(Landroid/content/Context;)V

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-direct {p2, p0, v0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;-><init>(Landroid/app/Application;Lcom/android/settings/biometrics/fingerprint/FingerprintUpdater;I)V

    return-object p2

    :cond_6
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v4}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    move-result-object p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;-><init>(Landroid/app/Application;ILcom/android/settings/biometrics2/data/repository/FingerprintRepository;)V

    return-object v0

    :cond_7
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, v4}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    invoke-virtual {p2, v3}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    new-instance v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;-><init>(ILandroid/app/Application;Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;)V

    return-object v0

    :cond_8
    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v3}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    iget-boolean p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    invoke-direct {p2, p0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;-><init>(Landroid/app/Application;Z)V

    return-object p2

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string p0, "BiometricsViewModelFactory"

    const-string p1, "create, null application"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
