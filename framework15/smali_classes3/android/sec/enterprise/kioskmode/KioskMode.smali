.class public Landroid/sec/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static blacklist CONTROL_PANEL_PKGNAME:Ljava/lang/String; = null

.field public static blacklist MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final blacklist TAG:Ljava/lang/String; = "KioskMode"

.field public static blacklist TASK_MANAGER_PKGNAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.android.app.taskmanager"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist isTaskManagerAllowed(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KioskMode"

    const-string v2, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
