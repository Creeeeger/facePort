.class public Landroid/content/pm/PackageInstaller;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageInstaller$SessionInfo;,
        Landroid/content/pm/PackageInstaller$SessionParams;,
        Landroid/content/pm/PackageInstaller$Session;,
        Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;,
        Landroid/content/pm/PackageInstaller$SessionCallback;,
        Landroid/content/pm/PackageInstaller$PackageSourceType;,
        Landroid/content/pm/PackageInstaller$FileLocation;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CONFIRM_INSTALL:Ljava/lang/String; = "android.content.pm.action.CONFIRM_INSTALL"

.field public static final whitelist ACTION_SESSION_COMMITTED:Ljava/lang/String; = "android.content.pm.action.SESSION_COMMITTED"

.field public static final whitelist ACTION_SESSION_DETAILS:Ljava/lang/String; = "android.content.pm.action.SESSION_DETAILS"

.field public static final whitelist ACTION_SESSION_UPDATED:Ljava/lang/String; = "android.content.pm.action.SESSION_UPDATED"

.field public static final whitelist DATA_LOADER_TYPE_INCREMENTAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_LOADER_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DATA_LOADER_TYPE_STREAMING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist DEFAULT_CHECKSUMS:I = 0x7f

.field public static final greylist-max-o ENABLE_REVOCABLE_FD:Z

.field public static final greylist-max-o EXTRA_CALLBACK:Ljava/lang/String; = "android.content.pm.extra.CALLBACK"

.field public static final whitelist EXTRA_DATA_LOADER_TYPE:Ljava/lang/String; = "android.content.pm.extra.DATA_LOADER_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_LEGACY_BUNDLE:Ljava/lang/String; = "android.content.pm.extra.LEGACY_BUNDLE"

.field public static final greylist-max-o EXTRA_LEGACY_STATUS:Ljava/lang/String; = "android.content.pm.extra.LEGACY_STATUS"

.field public static final whitelist EXTRA_OTHER_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.OTHER_PACKAGE_NAME"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAME"

.field public static final greylist-max-o EXTRA_PACKAGE_NAMES:Ljava/lang/String; = "android.content.pm.extra.PACKAGE_NAMES"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SESSION:Ljava/lang/String; = "android.content.pm.extra.SESSION"

.field public static final whitelist EXTRA_SESSION_ID:Ljava/lang/String; = "android.content.pm.extra.SESSION_ID"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.pm.extra.STATUS"

.field public static final whitelist EXTRA_STATUS_MESSAGE:Ljava/lang/String; = "android.content.pm.extra.STATUS_MESSAGE"

.field public static final whitelist EXTRA_STORAGE_PATH:Ljava/lang/String; = "android.content.pm.extra.STORAGE_PATH"

.field public static final whitelist LOCATION_DATA_APP:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_MEDIA_DATA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LOCATION_MEDIA_OBB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PACKAGE_SOURCE_DOWNLOADED_FILE:I = 0x4

.field public static final whitelist PACKAGE_SOURCE_LOCAL_FILE:I = 0x3

.field public static final whitelist PACKAGE_SOURCE_OTHER:I = 0x1

.field public static final whitelist PACKAGE_SOURCE_STORE:I = 0x2

.field public static final whitelist PACKAGE_SOURCE_UNSPECIFIED:I = 0x0

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_FAILURE_ABORTED:I = 0x3

.field public static final whitelist STATUS_FAILURE_BLOCKED:I = 0x2

.field public static final whitelist STATUS_FAILURE_CONFLICT:I = 0x5

.field public static final whitelist STATUS_FAILURE_INCOMPATIBLE:I = 0x7

.field public static final whitelist STATUS_FAILURE_INVALID:I = 0x4

.field public static final whitelist STATUS_FAILURE_STORAGE:I = 0x6

.field public static final blacklist STATUS_PENDING_STREAMING:I = -0x2

.field public static final whitelist STATUS_PENDING_USER_ACTION:I = -0x1

.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final greylist-max-o mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInstaller:Landroid/content/pm/IPackageInstaller;

.field private final greylist-max-o mInstallerPackageName:Ljava/lang/String;

.field private final greylist-max-o mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 129
    nop

    .line 130
    const-string v0, "fw.revocable_fd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "installer"    # Landroid/content/pm/IPackageInstaller;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    .line 481
    iput-object p1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    .line 482
    iput-object p2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    .line 483
    iput-object p3, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    .line 484
    iput p4, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    .line 485
    return-void
.end method


# virtual methods
.method public whitelist abandonSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 582
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    nop

    .line 586
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 950
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 951
    return-void
.end method

.method public greylist-max-o addSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 964
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 965
    return-void
.end method

.method public whitelist createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 4
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mAttributionTag:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 509
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 511
    throw v0
.end method

.method public whitelist getActiveStagedSession()Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getActiveStagedSessions()Ljava/util/List;

    move-result-object v0

    .line 668
    .local v0, "activeSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    :goto_0
    return-object v1
.end method

.method public whitelist getActiveStagedSessions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, "activeStagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getStagedSessions()Ljava/util/List;

    move-result-object v1

    .line 680
    .local v1, "stagedSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 681
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 682
    .local v3, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 683
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v3    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public whitelist getAllSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 612
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v1, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMySessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 623
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageInstaller;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 2
    .param p1, "sessionId"    # I

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStagedSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 637
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist installExistingPackage(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installReason"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 800
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 802
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    const/high16 v3, 0x400000

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    nop

    .line 808
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openSession(I)Landroid/content/pm/PackageInstaller$Session;
    .locals 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    :try_start_0
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    goto :goto_0

    .line 530
    :catch_1
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "sessionId":I
    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "sessionId":I
    :goto_0
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 535
    throw v0
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 958
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 959
    return-void
.end method

.method public whitelist registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 975
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 976
    :try_start_0
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p1, v2}, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;-><init>(Landroid/content/pm/PackageInstaller$SessionCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    .local v1, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/content/pm/IPackageInstaller;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    nop

    .line 983
    :try_start_2
    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    nop

    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    monitor-exit v0

    .line 985
    return-void

    .line 980
    .restart local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    :catch_0
    move-exception v2

    .line 981
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v3

    .line 984
    .end local v1    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o removeSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 990
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    .line 991
    return-void
.end method

.method public whitelist setPermissionsResult(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 835
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setPermissionsResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    nop

    .line 839
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUnknownSourceConfirmResult(IZ)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->setUnknownSourceConfirmResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    nop

    .line 653
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V
    .locals 7
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 773
    const-string/jumbo v0, "versionedPackage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 775
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v6, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    nop

    .line 780
    return-void

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist uninstall(Landroid/content/pm/VersionedPackage;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 752
    return-void
.end method

.method public greylist-max-o uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 723
    new-instance v0, Landroid/content/pm/VersionedPackage;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/pm/PackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;ILandroid/content/IntentSender;)V

    .line 725
    return-void
.end method

.method public whitelist uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;ILandroid/content/IntentSender;)V

    .line 708
    return-void
.end method

.method public whitelist uninstallExistingPackage(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;

    .line 820
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 822
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/content/pm/PackageInstaller;->mInstallerPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/PackageInstaller;->mUserId:I

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/content/pm/IPackageInstaller;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    nop

    .line 828
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageInstaller$SessionCallback;

    .line 997
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;

    .line 1000
    .local v2, "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    iget-object v3, v2, Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;->mCallback:Landroid/content/pm/PackageInstaller$SessionCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1002
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageInstaller;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1005
    nop

    .line 1006
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1003
    :catch_0
    move-exception v3

    .line 1004
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/content/pm/PackageInstaller;
    .end local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    throw v4

    .line 1008
    .end local v2    # "delegate":Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/pm/PackageInstaller;
    .restart local p1    # "callback":Landroid/content/pm/PackageInstaller$SessionCallback;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1009
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInstaller$SessionCallbackDelegate;>;"
    :cond_1
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .line 549
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstaller;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    nop

    .line 553
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateSessionAppLabel(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .line 564
    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    goto :goto_1

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 565
    .local v0, "val":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller;->mInstaller:Landroid/content/pm/IPackageInstaller;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/IPackageInstaller;->updateSessionAppLabel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    .end local v0    # "val":Ljava/lang/String;
    nop

    .line 569
    return-void

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
