.class public final Lcom/google/android/gms/common/api/internal/zacd;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:I

.field public final zac:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zad:J

.field public final zae:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager;",
            "I",
            "Lcom/google/android/gms/common/api/internal/ApiKey;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    return-void
.end method

.method public static zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 5

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzj;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    :goto_0
    if-eqz p1, :cond_7

    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget v4, v1, v2

    if-ne v4, p2, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_7

    aget v4, v1, v2

    if-ne v4, p2, :cond_6

    :cond_4
    :goto_3
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    if-ge p0, p2, :cond_5

    return-object p1

    :cond_5
    return-object v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/Map;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/api/Api$Client;

    instance-of v5, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez v5, :cond_3

    goto/16 :goto_8

    :cond_3
    check-cast v4, Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-wide v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v9, :cond_4

    move v12, v10

    goto :goto_1

    :cond_4
    move v12, v11

    :goto_1
    iget v15, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:I

    if-eqz v2, :cond_8

    iget-boolean v13, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    and-int/2addr v12, v13

    iget v13, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    iget v14, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    iget v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iget-object v7, v4, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v7

    if-nez v7, :cond_7

    iget v7, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/common/api/internal/zacd;->zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/BaseGmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    if-eqz v4, :cond_6

    if-lez v9, :cond_6

    goto :goto_2

    :cond_6
    move v10, v11

    :goto_2
    iget v14, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    move v12, v10

    :cond_7
    :goto_3
    move v3, v13

    move v4, v14

    goto :goto_4

    :cond_8
    const/16 v14, 0x64

    const/16 v13, 0x1388

    move v2, v11

    goto :goto_3

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_9

    move v7, v11

    goto :goto_6

    :cond_9
    move-object/from16 v7, p1

    check-cast v7, Lcom/google/android/gms/tasks/zzw;

    iget-object v9, v7, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v7, v7, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v9, v7, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v9, :cond_b

    check-cast v7, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/ApiException;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v7

    iget v11, v7, Lcom/google/android/gms/common/api/Status;->zzc:I

    iget-object v7, v7, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v7, :cond_a

    goto :goto_5

    :cond_a
    iget v7, v7, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    goto :goto_6

    :cond_b
    const/16 v11, 0x65

    :goto_5
    move v7, v8

    :goto_6
    if-eqz v12, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-wide/from16 v18, v5

    iget-wide v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    sub-long/2addr v12, v5

    long-to-int v5, v12

    move/from16 v24, v5

    move-wide/from16 v17, v18

    move-wide/from16 v19, v8

    goto :goto_7

    :cond_c
    move/from16 v24, v8

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_7
    new-instance v5, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v22, 0x0

    iget v14, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    const/16 v21, 0x0

    move-object v13, v5

    move v0, v15

    move v15, v11

    move/from16 v16, v7

    move/from16 v23, v0

    invoke-direct/range {v13 .. v24}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v6, v3

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zaq;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zace;

    move-object/from16 v18, v1

    move-object/from16 v19, v5

    move/from16 v20, v2

    move-wide/from16 v21, v6

    move/from16 v23, v4

    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    :goto_8
    return-void
.end method
