.class public final Lcom/android/settings/applications/AppStateInstallAppsBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_APP_SOURCES:Lcom/android/settings/applications/AppStateInstallAppsBridge$1;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mIpm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final createInstallAppsStateFor(ILjava/lang/String;)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    .locals 4

    new-instance v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "AppStateInstallAppsBridge"

    const-string v2, "PackageManager dead. Cannot get permission info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionRequested:Z

    iget-object p0, p0, Lcom/android/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x42

    invoke-virtual {p0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    return-object v0
.end method

.method public final loadAllExtraInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p3, p2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(ILjava/lang/String;)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
