.class public final Lcom/android/settings/applications/AppStateUsageBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final APP_OPS_OP_CODES:[I

.field public static final FILTER_APP_USAGE:Lcom/android/settings/applications/AppStateUsageBridge$1;

.field public static final PM_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x2b

    const/16 v1, 0x5f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->APP_OPS_OP_CODES:[I

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    const-string v1, "android.permission.LOADER_USAGE_STATS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settings/applications/AppStateUsageBridge$1;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 7

    sget-object v4, Lcom/android/settings/applications/AppStateUsageBridge;->APP_OPS_OP_CODES:[I

    sget-object v5, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSIONS:[Ljava/lang/String;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;[I[Ljava/lang/String;Landroid/content/pm/IPackageManager;)V

    return-void
.end method


# virtual methods
.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p3, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object p0

    new-instance p2, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
