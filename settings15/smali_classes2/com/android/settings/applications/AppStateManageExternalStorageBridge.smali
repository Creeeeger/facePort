.class public final Lcom/android/settings/applications/AppStateManageExternalStorageBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_MANAGE_EXTERNAL_STORAGE:Lcom/android/settings/applications/AppStateManageExternalStorageBridge$1;

.field public static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->PERMISSIONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->FILTER_MANAGE_EXTERNAL_STORAGE:Lcom/android/settings/applications/AppStateManageExternalStorageBridge$1;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 7

    const-string v0, "android:manage_external_storage"

    invoke-static {v0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->PERMISSIONS:[Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public final getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v1, "android:manage_external_storage"

    invoke-virtual {p0, v1, p1, p2}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    return-object v0
.end method

.method public final loadAllExtraInfo()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->loadAllExtraInfo()V

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    iget-object v3, p0, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "android:manage_external_storage"

    invoke-virtual {v3, v5, v4, v1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p3, p2}, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
