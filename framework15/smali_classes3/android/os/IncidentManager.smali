.class public Landroid/os/IncidentManager;
.super Ljava/lang/Object;
.source "IncidentManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IncidentManager$AuthListener;,
        Landroid/os/IncidentManager$PendingReport;,
        Landroid/os/IncidentManager$DumpCallback;,
        Landroid/os/IncidentManager$IncidentReport;,
        Landroid/os/IncidentManager$PrivacyPolicy;,
        Landroid/os/IncidentManager$PendingReportFlags;
    }
.end annotation


# static fields
.field public static final whitelist FLAG_ALLOW_CONSENTLESS_BUGREPORT:I = 0x2

.field public static final whitelist FLAG_CONFIRMATION_DIALOG:I = 0x1

.field public static final whitelist PRIVACY_POLICY_AUTO:I = 0xc8

.field public static final whitelist PRIVACY_POLICY_EXPLICIT:I = 0x64

.field public static final whitelist PRIVACY_POLICY_LOCAL:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "IncidentManager"

.field public static final blacklist URI_AUTHORITY:Ljava/lang/String; = "android.os.IncidentManager"

.field public static final blacklist URI_PARAM_CALLING_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final blacklist URI_PARAM_FLAGS:Ljava/lang/String; = "flags"

.field public static final blacklist URI_PARAM_ID:Ljava/lang/String; = "id"

.field public static final blacklist URI_PARAM_RECEIVER_CLASS:Ljava/lang/String; = "receiver"

.field public static final blacklist URI_PARAM_REPORT_ID:Ljava/lang/String; = "r"

.field public static final blacklist URI_PARAM_TIMESTAMP:Ljava/lang/String; = "t"

.field public static final blacklist URI_PATH:Ljava/lang/String; = "/pending"

.field public static final blacklist URI_SCHEME:Ljava/lang/String; = "content"


# instance fields
.field private blacklist mCompanionService:Landroid/os/IIncidentCompanion;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mIncidentService:Landroid/os/IIncidentManager;

.field private blacklist mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$aMxIZf9jBHeyt-5BI14dj672I8o(Landroid/os/IncidentManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IncidentManager;->lambda$getCompanionServiceLocked$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z82u9FYdAfbEmHqbSggjHRJmRTU(Landroid/os/IncidentManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IncidentManager;->lambda$getIIncidentManagerLocked$0()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist getCompanionServiceLocked()Landroid/os/IIncidentCompanion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    monitor-exit p0

    return-object v0

    :cond_1
    const-string v0, "incidentcompanion"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentCompanion$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentCompanion;

    move-result-object v0

    iput-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    invoke-interface {v0}, Landroid/os/IIncidentCompanion;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;-><init>(Landroid/os/IncidentManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_2
    iget-object v0, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o getIIncidentManagerLocked()Landroid/os/IIncidentManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    monitor-exit v0

    return-object v1

    :cond_1
    const-string v1, "incident"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v1

    iput-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    invoke-interface {v1}, Landroid/os/IIncidentManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/os/IncidentManager$$ExternalSyntheticLambda1;-><init>(Landroid/os/IncidentManager;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_2
    iget-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$getCompanionServiceLocked$1()V
    .locals 2

    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/os/IncidentManager;->mCompanionService:Landroid/os/IIncidentCompanion;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$getIIncidentManagerLocked$0()V
    .locals 2

    iget-object v0, p0, Landroid/os/IncidentManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/os/IncidentManager;->mIncidentService:Landroid/os/IIncidentManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o reportIncidentInternal(Landroid/os/IncidentReportArgs;)V
    .locals 3

    const-string v0, "IncidentManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "reportIncident can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1, p1}, Landroid/os/IIncidentManager;->reportIncident(Landroid/os/IncidentReportArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "reportIncident failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist approveReport(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->approveReport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist cancelAuthorization(Landroid/os/IncidentManager$AuthListener;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    iget-object v1, p1, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist deleteIncidentReports(Landroid/net/Uri;)V
    .locals 6

    const-string v0, "System server or incidentd going down"

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v1

    iget-object v2, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IIncidentCompanion;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v2, "receiver"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v3, "r"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_1
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Landroid/os/IIncidentCompanion;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    return-void

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: No r parameter. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No receiver parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: No pkg parameter. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist denyReport(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IIncidentCompanion;->denyReport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getIncidentReport(Landroid/net/Uri;)Landroid/os/IncidentManager$IncidentReport;
    .locals 6

    const-string/jumbo v0, "r"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "receiver"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Landroid/os/IIncidentCompanion;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "System server or incidentd going down"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: No receiver parameter. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: No pkg parameter. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getIncidentReportList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    iget-object v1, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/IIncidentCompanion;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System server or incidentd going down"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getPendingReports()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IncidentManager$PendingReport;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IIncidentCompanion;->getPendingReports()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Landroid/os/IncidentManager$PendingReport;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/IncidentManager$PendingReport;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist registerSection(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/IncidentManager$DumpCallback;)V
    .locals 3

    const-string v0, "IncidentManager"

    const-string v1, "executor cannot be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "callback cannot be null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p4}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fgetmExecutor(Landroid/os/IncidentManager$DumpCallback;)Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p4, p3}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fputmExecutor(Landroid/os/IncidentManager$DumpCallback;Ljava/util/concurrent/Executor;)V

    invoke-static {p4, p1}, Landroid/os/IncidentManager$DumpCallback;->-$$Nest$fputmId(Landroid/os/IncidentManager$DumpCallback;I)V

    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "registerSection can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p4, Landroid/os/IncidentManager$DumpCallback;->mBinder:Landroid/os/IIncidentDumpCallback$Stub;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IIncidentManager;->registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Do not reuse DumpCallback objects when calling registerSection"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "registerSection failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public whitelist reportIncident(Landroid/os/IncidentReportArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/IncidentManager;->reportIncidentInternal(Landroid/os/IncidentReportArgs;)V

    return-void
.end method

.method public whitelist requestAuthorization(ILjava/lang/String;ILandroid/os/IncidentManager$AuthListener;)V
    .locals 7

    iget-object v0, p0, Landroid/os/IncidentManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/os/IncidentManager;->requestAuthorization(ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/IncidentManager$AuthListener;)V

    return-void
.end method

.method public blacklist requestAuthorization(ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/IncidentManager$AuthListener;)V
    .locals 8

    :try_start_0
    iget-object v0, p5, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iput-object p4, p5, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/os/IncidentManager;->getCompanionServiceLocked()Landroid/os/IIncidentCompanion;

    move-result-object v1

    iget-object v7, p5, Landroid/os/IncidentManager$AuthListener;->mBinder:Landroid/os/IIncidentAuthListener$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/os/IIncidentCompanion;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not reuse AuthListener objects when calling requestAuthorization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist unregisterSection(I)V
    .locals 3

    const-string v0, "IncidentManager"

    :try_start_0
    invoke-direct {p0}, Landroid/os/IncidentManager;->getIIncidentManagerLocked()Landroid/os/IIncidentManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "unregisterSection can\'t find incident binder service"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1, p1}, Landroid/os/IIncidentManager;->unregisterSection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "unregisterSection failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
