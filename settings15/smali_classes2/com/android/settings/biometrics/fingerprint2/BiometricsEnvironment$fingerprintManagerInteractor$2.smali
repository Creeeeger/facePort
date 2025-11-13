.class final Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Lcom/android/settings/SettingsApplication;

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApplication;Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;->$context:Lcom/android/settings/SettingsApplication;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;->$context:Lcom/android/settings/SettingsApplication;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment$fingerprintManagerInteractor$2;->this$0:Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->backgroundDispatcher:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintEnrollInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintEnrollInteractor;

    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->gateKeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/BiometricsEnvironment;->fingerprintSensorRepository:Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintManagerInteractorImpl;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/fingerprint/FingerprintManager;Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;Lcom/android/settings/biometrics/GatekeeperPasswordProvider;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintEnrollInteractor;)V

    return-object v7
.end method
