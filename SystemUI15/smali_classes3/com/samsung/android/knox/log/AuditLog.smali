.class public Lcom/samsung/android/knox/log/AuditLog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_AUDIT_CRITICAL_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_CRITICAL_SIZE"

.field public static final ACTION_AUDIT_FULL_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_FULL_SIZE"

.field public static final ACTION_AUDIT_MAXIMUM_SIZE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.AUDIT_MAXIMUM_SIZE"

.field public static final ACTION_DUMP_LOG_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.DUMP_LOG_RESULT"

.field public static final ACTION_LOG_EXCEPTION:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_SEVERITY_ALERT:I = 0x1

.field public static final AUDIT_LOG_SEVERITY_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_SEVERITY_ERROR:I = 0x3

.field public static final AUDIT_LOG_SEVERITY_NOTICE:I = 0x5

.field public static final AUDIT_LOG_SEVERITY_WARNING:I = 0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final EXTRA_AUDIT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.AUDIT_RESULT"

.field public static final TAG:Ljava/lang/String; = "AuditLog"

.field public static mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/log/AuditLog;->mSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static a(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "AuditLog.a"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/log/IAuditLog;->auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Access to auditLogger not allowed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "AuditLog.c"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/log/IAuditLog;->auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Access to auditLogger not allowed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/log/AuditLog;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/log/AuditLog;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static e(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "AuditLog.e"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/log/IAuditLog;->auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Access to auditLogger not allowed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/log/AuditLog;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/log/AuditLog;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/log/AuditLog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/log/AuditLog;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditLog:Lcom/samsung/android/knox/log/AuditLog;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static n(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "AuditLog.n"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/log/IAuditLog;->auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Access to auditLogger not allowed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static w(IZILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "AuditLog.w"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    move v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    :try_start_0
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/log/IAuditLog;->auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Access to auditLogger not allowed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public disableAuditLog()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.disableAuditLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to disableAuditLog"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableIPTablesLogging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpLogFile(JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.dumpLogFile"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object v2, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/knox/log/IAuditLog;->dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string p1, "Failed to dumpLogFile"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableAuditLog()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.enableAuditLog"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to enableAuditLog"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableIPTablesLogging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuditLogRules()Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    const-string v2, "AuditLog"

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to getAuditLogFilter"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "getAuditLogRules() : This device doesn\'t support this API."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCriticalLogSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to get current log size"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentLogFileSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to get current log size"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaximumLogSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to get current log size"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/log/IAuditLog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    if-nez v0, :cond_0

    const-string v0, "auditlog"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    return-object p0
.end method

.method public isAuditLogEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.isAuditLogEnabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/log/IAuditLog;->isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "AuditLog"

    const-string v0, "Failed to isAuditLogEnabled"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIPTablesLoggingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAuditLogRules(Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setAuditLogRules"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0xe

    const-string v2, "AuditLog"

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to setAuditLogFilter"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setAuditLogRules() : This device doesn\'t support this API."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCriticalLogSize(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setCriticalLogSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to setCriticalLogSize size="

    const-string v0, "AuditLog"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMaximumLogSize(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AuditLog.setMaximumLogSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLog;->getService()Lcom/samsung/android/knox/log/IAuditLog;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/log/AuditLog;->mAuditService:Lcom/samsung/android/knox/log/IAuditLog;

    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLog;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/log/IAuditLog;->setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to setMaximumLogSize size="

    const-string v0, "AuditLog"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
