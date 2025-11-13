.class public final Lcom/samsung/android/service/HermesService/HermesServiceManager;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# static fields
.field public static final blacklist ERR_SERVICE_ERROR:I = -0x2710

.field public static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "HERMES#Manager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/samsung/android/service/HermesService/IHermesService;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const-string v1, "HERMES#Manager"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " It Can\'t connects to HermesService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " It connects to HermesService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private blacklist bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    if-nez v0, :cond_0

    const-string v0, "HERMES#Manager"

    const-string v1, "bindHermesService() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    const-string v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    const-string v1, "HermesService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    return-object v0
.end method


# virtual methods
.method public blacklist close()I
    .locals 5

    const-string v0, "close() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/16 v2, -0x2710

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSecureHwPowerOff()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist cosPatchTest([B)[B
    .locals 5

    const-string v0, "cosPatchTest() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesCosPatchTest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist getSeId()[B
    .locals 5

    const-string v0, "getSeId() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesGetSeId()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist hermesGetSecureHWInfo()[B
    .locals 5

    const-string v0, "hermesGetSecureHWInfo() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesGetSecureHWInfo()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist hermesProvisioning()I
    .locals 5

    const-string v0, "hermesProvisioning() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/16 v2, -0x2710

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesProvisioning()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist hermesSelftest()[B
    .locals 5

    const-string v0, "hermesSelftest() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hermesSelftest acquire wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    const-string v2, "hermesSelftest already acquried wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "hermesSelftest start mWakeLock is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSelftest()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "Failed to hermesSelftest service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "hermesSelftest release wakelock."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    :cond_3
    const-string v3, "hermesSelftest already released wakelock."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v3, "hermesSelftest end mWakeLock is null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public blacklist hermesSelftest(Ljava/lang/String;)[B
    .locals 5

    const-string v0, "hermesSelftest() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "hermesSelftest acquire wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    const-string v2, "hermesSelftest already acquried wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "hermesSelftest start mWakeLock is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2, p1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSelftest2(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "Failed to hermesSelftest service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "hermesSelftest release wakelock."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    :cond_3
    const-string v3, "hermesSelftest already released wakelock."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v3, "hermesSelftest end mWakeLock is null."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public blacklist hermesUpdateApplet()[B
    .locals 5

    const-string v0, "hermesUpdateApplet() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesUpdateApplet()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist hermesUpdateCryptoFW()[B
    .locals 5

    const-string v0, "hermesUpdateCryptoFW() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesUpdateCryptoFW()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist hermesVerifyProvisioning()I
    .locals 5

    const-string v0, "hermesVerifyProvisioning() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/16 v2, -0x2710

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesVerifyProvisioning()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist open()I
    .locals 5

    const-string v0, "open() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/16 v2, -0x2710

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSecureHwPowerOn()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist send([B)[B
    .locals 5

    const-string v0, "send() is called."

    const-string v1, "HERMES#Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSendApdu([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v3

    const-string v4, "Failed to connect service."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2

    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
