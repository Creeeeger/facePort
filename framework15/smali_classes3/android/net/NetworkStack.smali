.class public Landroid/net/NetworkStack;
.super Ljava/lang/Object;
.source "NetworkStack.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist PERMISSION_MAINLINE_NETWORK_STACK:Ljava/lang/String; = "android.permission.MAINLINE_NETWORK_STACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static volatile blacklist sMockService:Landroid/os/IBinder;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkNetworkStackPermission(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static varargs blacklist checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist getService()Landroid/os/IBinder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/net/NetworkStack;->sMockService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "network_stack"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist setServiceForTest(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Landroid/net/NetworkStack;->sMockService:Landroid/os/IBinder;

    return-void
.end method
