.class public Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EDMProxyServiceHelper"
.end annotation


# static fields
.field private static blacklist mService:Landroid/sec/enterprise/IEDMProxy;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    .line 81
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "edm_proxy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/enterprise/IEDMProxy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    .line 85
    :cond_0
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->mService:Landroid/sec/enterprise/IEDMProxy;

    return-object v0
.end method
