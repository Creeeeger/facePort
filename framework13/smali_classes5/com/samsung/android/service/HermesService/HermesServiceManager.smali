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
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v0

    const-string v1, "HERMES#Manager"

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " It connects to HermesService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 55
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    return-void
.end method

.method private blacklist bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "HERMES#Manager"

    const-string v1, "bindHermesService() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 36
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "HermesService"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 37
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    .line 39
    .end local v0    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mService:Lcom/samsung/android/service/HermesService/IHermesService;

    return-object v0
.end method


# virtual methods
.method public blacklist hermesGetSecureHWInfo()[B
    .locals 5

    .line 156
    const-string v0, "HERMES#Manager"

    const-string v1, "hermesGetSecureHWInfo() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    .line 160
    .local v1, "mBinder":Lcom/samsung/android/service/HermesService/IHermesService;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesGetSecureHWInfo()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    return-object v2

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 165
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 167
    return-object v2

    .line 174
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-object v2
.end method

.method public blacklist hermesProvisioning()I
    .locals 5

    .line 108
    const-string v0, "HERMES#Manager"

    const-string v1, "hermesProvisioning() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    .line 112
    .local v1, "mBinder":Lcom/samsung/android/service/HermesService/IHermesService;
    const/16 v2, -0x2710

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesProvisioning()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    return v2

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 117
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 119
    return v2

    .line 126
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v2
.end method

.method public blacklist hermesSelftest()[B
    .locals 5

    .line 59
    const-string v0, "HERMES#Manager"

    const-string v1, "hermesSelftest() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "ret":[B
    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const-string v2, "hermesSelftest acquire wakelock."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 67
    :cond_0
    const-string v2, "hermesSelftest already acquried wakelock."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    const-string v2, "hermesSelftest start mWakeLock is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v2

    .line 75
    .local v2, "mBinder":Lcom/samsung/android/service/HermesService/IHermesService;
    if-eqz v2, :cond_2

    .line 77
    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesSelftest()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 87
    :goto_1
    goto :goto_2

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 79
    :catch_1
    move-exception v3

    .line 80
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to hermesSelftest service."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 82
    const/4 v1, 0x0

    .end local v3    # "npe":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 89
    :cond_2
    const-string v3, "bindHermesService is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    const-string v3, "hermesSelftest release wakelock."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/service/HermesService/HermesServiceManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    .line 98
    :cond_3
    const-string v3, "hermesSelftest already released wakelock."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :cond_4
    const-string v3, "hermesSelftest end mWakeLock is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_3
    return-object v1
.end method

.method public blacklist hermesUpdateCryptoFW()[B
    .locals 5

    .line 180
    const-string v0, "HERMES#Manager"

    const-string v1, "hermesUpdateCryptoFW() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    .line 184
    .local v1, "mBinder":Lcom/samsung/android/service/HermesService/IHermesService;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesUpdateCryptoFW()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    return-object v2

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 189
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 191
    return-object v2

    .line 198
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v2
.end method

.method public blacklist hermesVerifyProvisioning()I
    .locals 5

    .line 132
    const-string v0, "HERMES#Manager"

    const-string v1, "hermesVerifyProvisioning() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->bindHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    .line 136
    .local v1, "mBinder":Lcom/samsung/android/service/HermesService/IHermesService;
    const/16 v2, -0x2710

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesVerifyProvisioning()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    return v2

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 141
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v4, "Failed to connect service."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 143
    return v2

    .line 150
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_0
    const-string v3, "bindHermesService is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v2
.end method
