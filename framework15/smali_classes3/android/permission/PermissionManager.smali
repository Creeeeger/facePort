.class public final Landroid/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;,
        Landroid/permission/PermissionManager$SplitPermissionInfo;,
        Landroid/permission/PermissionManager$PermissionQuery;,
        Landroid/permission/PermissionManager$PackageNamePermissionQuery;,
        Landroid/permission/PermissionManager$PermissionState;,
        Landroid/permission/PermissionManager$PermissionResult;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_REVIEW_PERMISSION_DECISIONS:Ljava/lang/String; = "android.permission.action.REVIEW_PERMISSION_DECISIONS"

.field public static final blacklist CACHE_KEY_PACKAGE_INFO:Ljava/lang/String; = "cache_key.package_info"

.field public static final blacklist CANNOT_INSTALL_WITH_BAD_PERMISSION_GROUPS:J = 0x8b70248L

.field public static final blacklist DEBUG_DEVICE_PERMISSIONS:Z = false

.field public static final blacklist DEBUG_TRACE_GRANTS:Z = false

.field public static final blacklist DEBUG_TRACE_PERMISSION_UPDATES:Z = false

.field public static final blacklist DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXEMPTED_INDICATOR_ROLE_UPDATE_FREQUENCY_MS:J = 0x3a98L

.field private static final blacklist EXEMPTED_ROLES:[I

.field public static final blacklist EXPLICIT_SET_FLAGS:I = 0x8037

.field public static final whitelist EXTRA_PERMISSION_USAGES:Ljava/lang/String; = "android.permission.extra.PERMISSION_USAGES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

.field public static final blacklist KILL_APP_REASON_GIDS_CHANGED:Ljava/lang/String; = "permission grant or revoke changed gids"

.field public static final blacklist KILL_APP_REASON_PERMISSIONS_REVOKED:Ljava/lang/String; = "permissions revoked"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist LOG_TAG_TRACE_GRANTS:Ljava/lang/String; = "PermissionGrantTrace"

.field public static final whitelist PERMISSION_GRANTED:I = 0x0

.field public static final whitelist PERMISSION_HARD_DENIED:I = 0x2

.field public static final whitelist PERMISSION_SOFT_DENIED:I = 0x1

.field private static final blacklist SYSTEM_PKG:Ljava/lang/String; = "android"

.field public static final blacklist USE_ACCESS_CHECKING_SERVICE:Z

.field private static blacklist sLastIndicatorUpdateTime:J

.field private static blacklist sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPermissionCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/permission/PermissionManager$PermissionQuery;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sShouldWarnMissingActivityManager:Z


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private final blacklist mPackageManager:Landroid/content/pm/IPackageManager;

.field private final blacklist mPermissionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPermissionManager:Landroid/permission/IPermissionManager;

.field private blacklist mSplitPermissionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsageHelper:Landroid/permission/PermissionUsageHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckPermissionUncached(Ljava/lang/String;III)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->checkPermissionUncached(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-class v0, Landroid/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/internal/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    sput-boolean v0, Landroid/permission/PermissionManager;->USE_ACCESS_CHECKING_SERVICE:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    sget-object v0, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    new-instance v0, Landroid/permission/PermissionManager$1;

    const/16 v1, 0x800

    const-string v2, "checkPermission"

    const-string v3, "cache_key.package_info"

    invoke-direct {v0, v1, v3, v2}, Landroid/permission/PermissionManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v0, Landroid/permission/PermissionManager$2;

    const/16 v1, 0x10

    const-string v2, "checkPackageNamePermission"

    invoke-direct {v0, v1, v3, v2}, Landroid/permission/PermissionManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    return-void

    :array_0
    .array-data 4
        0x1040033
        0x1040032
        0x1040034
        0x1040035
        0x1040036
        0x1040037
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-string/jumbo v0, "permissionmgr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    const-class v0, Landroid/permission/LegacyPermissionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    iput-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    return-void
.end method

.method private static blacklist checkPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/permission/IPermissionManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist checkPermission(Ljava/lang/String;III)I
    .locals 2

    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionManager$PermissionQuery;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist checkPermissionUncached(Ljava/lang/String;III)I
    .locals 6

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const-string v2, "Missing ActivityManager; assuming "

    if-eqz v1, :cond_1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " does not hold "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_1
    :goto_0
    sget-boolean v3, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " holds "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    :cond_2
    return v4

    :cond_3
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Landroid/permission/PermissionManager;->sShouldWarnMissingActivityManager:Z

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/app/IActivityManager;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist disablePackageNamePermissionCache()V
    .locals 1

    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static blacklist disablePermissionCache()V
    .locals 1

    sget-object v0, Landroid/permission/PermissionManager;->sPermissionCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static blacklist getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/permission/PermissionManager;->updateIndicatorExemptedPackages(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getPersistentDeviceId(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v0, "default:0"

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmPublicApis()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Virtual device is not found with device Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_1
    invoke-virtual {v2}, Landroid/companion/virtual/VirtualDevice;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v3, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find persistent device Id for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto :goto_0

    :cond_3
    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vdmPublicApis flag is not enabled when device Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private blacklist grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist shouldTraceGrant(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/permission/PermissionManager$SplitPermissionInfo;-><init>(Landroid/content/pm/permission/SplitPermissionInfoParcelable;Landroid/permission/PermissionManager$SplitPermissionInfo-IA;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static blacklist splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    new-instance v4, Landroid/content/pm/permission/SplitPermissionInfoParcelable;

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/permission/SplitPermissionInfoParcelable;-><init>(Ljava/lang/String;Ljava/util/List;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static blacklist updateIndicatorExemptedPackages(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    sput-wide v0, Landroid/permission/PermissionManager;->sLastIndicatorUpdateTime:J

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/permission/PermissionManager;->INDICATOR_EXEMPTED_PACKAGES:[Ljava/lang/String;

    sget-object v4, Landroid/permission/PermissionManager;->EXEMPTED_ROLES:[I

    aget v4, v4, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mLegacyPermissionManager:Landroid/permission/LegacyPermissionManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/permission/LegacyPermissionManager;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public blacklist checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3

    invoke-direct {p0, p3}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-direct {v2, p1, p2, v0, p4}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public whitelist checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/permission/PermissionManager;->sPackageNamePermissionCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/permission/PermissionManager$PackageNamePermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForDataDeliveryFromDataSource(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0
.end method

.method public whitelist checkPermissionForStartDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public whitelist finishDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/content/PermissionChecker;->finishDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;)V

    return-void
.end method

.method public blacklist getAllPermissionGroups(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllowlistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionGrantedPackages()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionGrantedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAutoRevokeExemptionRequestedPackages()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->getAutoRevokeExemptionRequestedPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->toSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIndicatorAppOpUsageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/media/AudioManager;

    invoke-direct {v0}, Landroid/media/AudioManager;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIndicatorAppOpUsageData(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/permission/PermissionManager;->initializeUsageHelper()V

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    const-string v2, "default:0"

    invoke-virtual {v1, v0, v2}, Landroid/permission/PermissionUsageHelper;->getOpUsageDataByDevice(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    return v1
.end method

.method public whitelist getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->getPermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public blacklist getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v1, p1, v0, p2}, Landroid/permission/IPermissionManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRegisteredAttributionSourceCountForTest(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->getRegisteredAttributionSourceCount(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getRuntimePermissionsVersion()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionsVersion(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSplitPermissions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/permission/IPermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToNonParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mSplitPermissionInfos:Ljava/util/List;

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/permission/PermissionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error getting split permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/permission/PermissionManager;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public blacklist initializeUsageHelper()V
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/permission/PermissionUsageHelper;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/permission/PermissionUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    :cond_0
    return-void
.end method

.method public blacklist isAutoRevokeExempted(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->isAutoRevokeExempted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/permission/IPermissionManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSourceState;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->serverSideAttributionRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/AttributionSource;->withToken(Landroid/os/IBinder;)Landroid/content/AttributionSource;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/permission/IPermissionManager;->registerAttributionSource(Landroid/content/AttributionSourceState;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-object p1
.end method

.method public blacklist removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/permission/IPermissionManager;->removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v2, v1}, Landroid/permission/IPermissionManager;->removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    iget-object v2, p0, Landroid/permission/PermissionManager;->mPermissionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist removePermission(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1}, Landroid/permission/IPermissionManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    invoke-interface {v0, p1, p2}, Landroid/permission/IPermissionManager;->revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/permission/PermissionManager;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAutoRevokeExempted(Ljava/lang/String;Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/permission/IPermissionManager;->setAutoRevokeExempted(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRuntimePermissionsVersion(I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->setRuntimePermissionsVersion(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v2, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v3, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/permission/IPermissionManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JII)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/permission/PermissionManager;->startOneTimePermissionSession(Ljava/lang/String;JJII)V

    return-void
.end method

.method public whitelist startOneTimePermissionSession(Ljava/lang/String;JJII)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v2

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->startOneTimePermissionSession(Ljava/lang/String;IIJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist stopOneTimePermissionSession(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionManager;->mPermissionManager:Landroid/permission/IPermissionManager;

    iget-object v1, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/permission/IPermissionManager;->stopOneTimePermissionSession(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist tearDownUsageHelper()V
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    invoke-virtual {v0}, Landroid/permission/PermissionUsageHelper;->tearDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/permission/PermissionManager;->mUsageHelper:Landroid/permission/PermissionUsageHelper;

    :cond_0
    return-void
.end method

.method public blacklist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 8

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionManager;->getPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, v0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public whitelist updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/permission/PermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlagsInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
