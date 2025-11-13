.class public final Lcom/android/server/RealTimeTokenManager;
.super Ljava/lang/Object;
.source "RealTimeTokenManager.java"


# static fields
.field public static final blacklist RTTS_ERR_GENERAL_ERROR:I = -0x65

.field public static final blacklist RTTS_ERR_INVALID_ARGUMENT:I = -0x66

.field public static final blacklist RTTS_ERR_INVALID_DEVICE_TIME:I = -0x69

.field public static final blacklist RTTS_ERR_OUT_OF_STORAGE:I = -0x6c

.field public static final blacklist RTTS_ERR_PERMISSION_DENIED:I = -0x68

.field public static final blacklist RTTS_ERR_SERVICE_NOT_READY:I = -0x67

.field public static final blacklist RTTS_ERR_TOKEN_ALREADY_EXIST:I = -0x6a

.field public static final blacklist RTTS_ERR_TOKEN_NOT_EXIST:I = -0x6b

.field public static final blacklist RTTS_ERR_TOKEN_NOT_SUPPORTED:I = -0x6d

.field public static final blacklist RTTS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "RealTimeTokenManager"


# instance fields
.field private blacklist mService:Lcom/android/server/IRealTimeTokenService;


# direct methods
.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RealTimeTokenManager getService"

    const-string v1, "RealTimeTokenManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RealTimeTokenService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/IRealTimeTokenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/IRealTimeTokenService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    iget-object v2, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    if-nez v2, :cond_0

    const-string v2, " Failed to getService, return null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/server/RealTimeTokenManager;
    .locals 1

    new-instance v0, Lcom/android/server/RealTimeTokenManager;

    invoke-direct {v0}, Lcom/android/server/RealTimeTokenManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist checkTokenInfoExpiry(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/IRealTimeTokenService;->checkTokenInfoExpiry(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x65

    return v1
.end method

.method public blacklist registerTokenInfo(JJ)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/IRealTimeTokenService;->registerTokenInfo(JJ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x65

    return v1
.end method

.method public blacklist unregisterAllTokenInfo()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    invoke-interface {v0}, Lcom/android/server/IRealTimeTokenService;->unregisterAllTokenInfo()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x65

    return v1
.end method

.method public blacklist unregisterTokenInfo(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/RealTimeTokenManager;->mService:Lcom/android/server/IRealTimeTokenService;

    invoke-interface {v0, p1, p2}, Lcom/android/server/IRealTimeTokenService;->unregisterTokenInfo(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x65

    return v1
.end method
