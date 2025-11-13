.class public Landroid/security/AndroidProtectedConfirmation;
.super Ljava/lang/Object;
.source "AndroidProtectedConfirmation.java"


# static fields
.field public static final blacklist ERROR_ABORTED:I = 0x2

.field public static final blacklist ERROR_CANCELED:I = 0x1

.field public static final blacklist ERROR_IGNORED:I = 0x4

.field public static final blacklist ERROR_OK:I = 0x0

.field public static final blacklist ERROR_OPERATION_PENDING:I = 0x3

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x5

.field public static final blacklist ERROR_UNIMPLEMENTED:I = 0x6

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidProtectedConfirmation"


# instance fields
.field private blacklist mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    return-void
.end method

.method private declared-synchronized blacklist getService()Landroid/security/apc/IProtectedConfirmation;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    if-nez v0, :cond_0

    const-string v0, "android.security.apc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    iput-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;

    :cond_0
    iget-object v0, p0, Landroid/security/AndroidProtectedConfirmation;->mProtectedConfirmation:Landroid/security/apc/IProtectedConfirmation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blacklist cancelConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;)I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/apc/IProtectedConfirmation;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public blacklist isConfirmationPromptSupported()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/apc/IProtectedConfirmation;->isSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist presentConfirmationPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6

    :try_start_0
    invoke-direct {p0}, Landroid/security/AndroidProtectedConfirmation;->getService()Landroid/security/apc/IProtectedConfirmation;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/apc/IProtectedConfirmation;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    return v1

    :catch_1
    move-exception v0

    const-string v1, "AndroidProtectedConfirmation"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method
