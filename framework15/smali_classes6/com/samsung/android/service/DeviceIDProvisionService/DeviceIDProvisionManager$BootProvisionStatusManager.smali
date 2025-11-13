.class final Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BootProvisionStatusManager"
.end annotation


# static fields
.field private static final blacklist ALIAS_FOR_FIRST_BOOT:Ljava/lang/String; = "alias_for_first_boot"

.field private static blacklist instance:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;


# instance fields
.field private blacklist mProvisioned:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->instance:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->isNotExistCriticalKey()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->mProvisioned:Z

    return-void
.end method

.method private static blacklist deleteCriticalKey()I
    .locals 3

    const-string v0, "alias_for_first_boot"

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist generateCriticalKey()I
    .locals 6

    const-string v0, "alias_for_first_boot"

    const-string v1, "AndroidKeyStore"

    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "AES"

    invoke-static {v4, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v0, v4

    const-string v4, "SHA-256"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getInstance()Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->instance:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;-><init>()V

    sput-object v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->instance:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->instance:Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;

    return-object v0
.end method

.method private static blacklist isNotExistCriticalKey()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v3, "alias_for_first_boot"

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist isProvisioned()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->mProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setProvisioned()I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->mProvisioned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DeviceIDProvisionManager"

    const-string v2, "Set boot provisioned status requested, but is already set."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->generateCriticalKey()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "DeviceIDProvisionManager"

    const-string v2, "Failed to set boot provisioned status. [ret = %d]"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->mProvisioned:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setProvisionedUntilReboot()I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->deleteCriticalKey()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "DeviceIDProvisionManager"

    const-string v2, "Phony set boot provisioned status requested, but failed to clear status in storage. [ret = %d]"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager$BootProvisionStatusManager;->mProvisioned:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
