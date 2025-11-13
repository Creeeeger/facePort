.class public Landroid/security/KeyStoreAuthorization;
.super Ljava/lang/Object;
.source "KeyStoreAuthorization.java"


# static fields
.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuthorization"

.field private static final blacklist sInstance:Landroid/security/KeyStoreAuthorization;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/KeyStoreAuthorization;

    invoke-direct {v0}, Landroid/security/KeyStoreAuthorization;-><init>()V

    sput-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/security/KeyStoreAuthorization;
    .locals 1

    sget-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-object v0
.end method

.method private blacklist getService()Landroid/security/authorization/IKeystoreAuthorization;
    .locals 1

    nop

    const-string v0, "android.security.authorization"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .locals 3

    const-string v0, "addAuthToken"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public blacklist addAuthToken([B)I
    .locals 1

    invoke-static {p1}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result v0

    return v0
.end method

.method public blacklist getLastAuthTime(J[I)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->getLastAuthTime(J[I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting last auth time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyStoreAuthorization"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public blacklist onDeviceLocked(I[JZ)I
    .locals 3

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceLocked(I[JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public blacklist onDeviceUnlocked(I[B)I
    .locals 3

    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    :try_start_0
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceUnlocked(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "KeyStoreAuthorization"

    const-string v2, "Can not connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method
