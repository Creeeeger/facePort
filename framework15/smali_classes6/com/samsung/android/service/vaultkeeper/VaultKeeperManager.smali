.class public final Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
.super Ljava/lang/Object;
.source "VaultKeeperManager.java"


# static fields
.field public static final blacklist ERR_DEVICE_NOT_READY:I = -0x6d

.field public static final blacklist ERR_EXCEPTION:I = -0x67

.field public static final blacklist ERR_FAILURE_ACQUIRE_LOCK:I = -0x69

.field public static final blacklist ERR_GENERAL_FAILED:I = -0x65

.field public static final blacklist ERR_INVALID_ARGUMENT:I = -0x66

.field public static final blacklist ERR_PERMISSION_DENIED:I = -0x6a

.field public static final blacklist ERR_SERVICE_NOT_SUPPORT:I = -0x68

.field public static final blacklist ERR_TA_SERVICE_ERROR:I = -0x6e

.field public static final blacklist ERR_VAULT_NOT_AVAILABLE:I = -0x6b

.field public static final blacklist ERR_VERIFICATION_FAILURE:I = -0x6c

.field public static final blacklist MAX_LEN_VAULT_NAME:I = 0x20

.field public static final blacklist SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VaultKeeperManager"

.field public static final blacklist TYPE_COMMERCIAL_DEVICE:I = 0x6

.field public static final blacklist TYPE_EMT:I = 0x3

.field public static final blacklist TYPE_NONCE:I = 0x1

.field public static final blacklist TYPE_VAULT_DATA_MAX:I = 0x2

.field public static final blacklist TYPE_VAULT_DATA_MIN:I = 0x1

.field public static final blacklist TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field public static final blacklist TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field public static final blacklist TYPE_VK_API_LEVEL:I = 0x9

.field public static final blacklist TYPE_WB:I = 0x2


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

.field private blacklist mVaultName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x65

    iput v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    iput-object p1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const-string v0, "VaultKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "VaultKeeperManager"

    if-nez p0, :cond_0

    const-string v2, "vaultName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vaultName length is wrong("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "). It should be less than ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public blacklist checkDataWritable()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->checkDataWritable(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist destroy()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist destroy([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist destroy([B[B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->destroy(Ljava/lang/String;[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist encryptMessage([B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->encryptMessage(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist generateHotpCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->generateHotpCode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    return v0
.end method

.method public blacklist initialize([B[B[B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;[B[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist initialize([B[B[B[B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->initialize(Ljava/lang/String;[B[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist isInitialized()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->isInitialized(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist migrationStorage()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->migrationStorage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist read(I)[B
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, -0x66

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->read(Ljava/lang/String;I[I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    const/4 v1, 0x0

    return-object v1

    :goto_0
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    throw v2
.end method

.method public blacklist sensitiveBox(I)[B
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, -0x66

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v3, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v2, v3, p1, v0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->sensitiveBox(Ljava/lang/String;I[I)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    const/4 v1, 0x0

    return-object v1

    :goto_0
    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mErrorCode:I

    throw v2
.end method

.method public blacklist verifyCertificate([B)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->verifyCertificate(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist write(I[B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist write(I[B[B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method

.method public blacklist write(I[B[B[B)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mService:Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;

    iget-object v1, p0, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->mVaultName:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService;->write(Ljava/lang/String;I[B[B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x67

    return v1
.end method
