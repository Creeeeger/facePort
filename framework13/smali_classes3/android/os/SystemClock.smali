.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SystemClock"

.field private static volatile blacklist sIAlarmManager:Landroid/app/IAlarmManager;


# direct methods
.method private constructor greylist <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method public static whitelist currentGnssTimeClock()Ljava/time/Clock;
    .locals 2

    .line 339
    new-instance v0, Landroid/os/SystemClock$4;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$4;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static whitelist currentNetworkTimeClock()Ljava/time/Clock;
    .locals 2

    .line 324
    new-instance v0, Landroid/os/SystemClock$3;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$3;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static greylist-max-o currentNetworkTimeMillis()J
    .locals 3

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->getIAlarmManager()Landroid/app/IAlarmManager;

    move-result-object v0

    .line 285
    .local v0, "mgr":Landroid/app/IAlarmManager;
    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-interface {v0}, Landroid/app/IAlarmManager;->currentNetworkTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 288
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Landroid/os/ParcelableException;
    const-class v2, Ljava/time/DateTimeException;

    invoke-virtual {v1, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 290
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 295
    .end local v1    # "e":Landroid/os/ParcelableException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static native greylist-max-r currentThreadTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist currentThreadTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native greylist currentTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist elapsedRealtime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static greylist elapsedRealtimeClock()Ljava/time/Clock;
    .locals 2

    .line 220
    new-instance v0, Landroid/os/SystemClock$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$2;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist elapsedRealtimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static blacklist getIAlarmManager()Landroid/app/IAlarmManager;
    .locals 1

    .line 300
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    if-nez v0, :cond_0

    .line 301
    nop

    .line 302
    const-string v0, "alarm"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    sput-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    .line 304
    :cond_0
    sget-object v0, Landroid/os/SystemClock;->sIAlarmManager:Landroid/app/IAlarmManager;

    return-object v0
.end method

.method public static whitelist setCurrentTimeMillis(J)Z
    .locals 5
    .param p0, "millis"    # J

    .line 156
    const-string v0, "Unable to set RTC"

    invoke-static {}, Landroid/os/SystemClock;->getIAlarmManager()Landroid/app/IAlarmManager;

    move-result-object v1

    .line 157
    .local v1, "mgr":Landroid/app/IAlarmManager;
    const/4 v2, 0x0

    const-string v3, "SystemClock"

    if-nez v1, :cond_0

    .line 158
    const-string v0, "Unable to set RTC: mgr == null"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v2

    .line 163
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-static {v3, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 165
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v3, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v4    # "e":Landroid/os/RemoteException;
    nop

    .line 170
    :goto_0
    return v2
.end method

.method public static whitelist sleep(J)V
    .locals 9
    .param p0, "ms"    # J

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "start":J
    move-wide v2, p0

    .line 130
    .local v2, "duration":J
    const/4 v4, 0x0

    .line 133
    .local v4, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_1

    .line 135
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 138
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    add-long v5, v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v2, v5, v7

    .line 139
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 141
    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    goto :goto_0
.end method

.method public static greylist uptimeClock()Ljava/time/Clock;
    .locals 2

    .line 197
    new-instance v0, Landroid/os/SystemClock$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Landroid/os/SystemClock$1;-><init>(Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public static native whitelist uptimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native blacklist uptimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method
