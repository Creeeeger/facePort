.class public Lcom/android/internal/protolog/ProtoLogImpl;
.super Ljava/lang/Object;
.source "ProtoLogImpl.java"


# static fields
.field private static blacklist sCacheUpdater:Ljava/lang/Runnable;

.field private static blacklist sLegacyOutputFilePath:Ljava/lang/String;

.field private static blacklist sLegacyViewerConfigPath:Ljava/lang/String;

.field private static blacklist sLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

.field private static blacklist sViewerConfigPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .locals 6

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/tracing/Flags;->perfettoProtologTracing()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sLogGroups:Ljava/util/TreeMap;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/protolog/LegacyProtoLogImpl;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sLegacyOutputFilePath:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sLegacyViewerConfigPath:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl;->sLogGroups:Ljava/util/TreeMap;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/protolog/LegacyProtoLogImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized blacklist setSingleInstance(Lcom/android/internal/protolog/common/IProtoLog;)V
    .locals 1

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
