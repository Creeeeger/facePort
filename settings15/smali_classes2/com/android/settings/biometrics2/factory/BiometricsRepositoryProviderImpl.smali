.class public final Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;


# direct methods
.method public static getFingerprintRepository(Landroid/app/Application;)Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->sFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->sFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    sput-object v1, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->sFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProviderImpl;->sFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    return-object p0
.end method
